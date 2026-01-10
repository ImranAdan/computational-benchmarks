import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;

// Padding to prevent false sharing
abstract class PaddedEnqueuePos {
    protected long p1, p2, p3, p4, p5, p6, p7;
    protected final AtomicLong enqueuePos = new AtomicLong(0);
    protected long p8, p9, p10, p11, p12, p13, p14;
}

abstract class PaddedDequeuePos extends PaddedEnqueuePos {
    protected long p15, p16, p17, p18, p19, p20, p21;
    protected final AtomicLong dequeuePos = new AtomicLong(0);
    protected long p22, p23, p24, p25, p26, p27, p28;
}

class LockFreeQueue extends PaddedDequeuePos {
    private static final int QUEUE_SIZE = 65536;
    private static final int QUEUE_MASK = QUEUE_SIZE - 1;

    private final AtomicLongArray sequence = new AtomicLongArray(QUEUE_SIZE);
    private final long[] data = new long[QUEUE_SIZE];

    public LockFreeQueue() {
        for (int i = 0; i < QUEUE_SIZE; i++) {
            sequence.set(i, i);
        }
    }

    public boolean enqueue(long value) {
        long pos = enqueuePos.get();
        while (true) {
            int index = (int) (pos & QUEUE_MASK);
            long seq = sequence.get(index);
            long diff = seq - pos;

            if (diff == 0) {
                if (enqueuePos.compareAndSet(pos, pos + 1)) {
                    data[index] = value;
                    sequence.set(index, pos + 1);
                    return true;
                }
            } else if (diff < 0) {
                return false; // Queue full
            } else {
                pos = enqueuePos.get();
            }
            Thread.onSpinWait();
        }
    }

    public long dequeue() {
        long pos = dequeuePos.get();
        while (true) {
            int index = (int) (pos & QUEUE_MASK);
            long seq = sequence.get(index);
            long diff = seq - (pos + 1);

            if (diff == 0) {
                if (dequeuePos.compareAndSet(pos, pos + 1)) {
                    long value = data[index];
                    sequence.set(index, pos + QUEUE_SIZE);
                    return value;
                }
            } else if (diff < 0) {
                return 0; // Queue empty
            } else {
                pos = dequeuePos.get();
            }
            Thread.onSpinWait();
        }
    }
}

public class Bench {
    private static final int NUM_PRODUCERS = 4;
    private static final int NUM_CONSUMERS = 4;
    private static final int OPS_PER_PRODUCER = 1000000;

    public static void main(String[] args) throws InterruptedException {
        final LockFreeQueue queue = new LockFreeQueue();
        final AtomicLong totalConsumed = new AtomicLong(0);
        final long expectedTotal = (long) NUM_PRODUCERS * OPS_PER_PRODUCER;
        
        final AtomicLong[] producerSums = new AtomicLong[NUM_PRODUCERS];
        final AtomicLong[] consumerSums = new AtomicLong[NUM_CONSUMERS];
        final AtomicLong[] producerOps = new AtomicLong[NUM_PRODUCERS];
        final AtomicLong[] consumerOps = new AtomicLong[NUM_CONSUMERS];

        Thread[] producers = new Thread[NUM_PRODUCERS];
        Thread[] consumers = new Thread[NUM_CONSUMERS];

        long start = System.currentTimeMillis();

        for (int i = 0; i < NUM_PRODUCERS; i++) {
            final int id = i;
            producerOps[i] = new AtomicLong(0);
            producers[i] = new Thread(() -> {
                long base = (long) id * OPS_PER_PRODUCER;
                for (int j = 0; j < OPS_PER_PRODUCER; j++) {
                    long value = base + j + 1;
                    while (!queue.enqueue(value)) {
                        Thread.yield();
                    }
                    producerOps[id].incrementAndGet();
                }
            });
        }

        for (int i = 0; i < NUM_CONSUMERS; i++) {
            final int id = i;
            consumerSums[i] = new AtomicLong(0);
            consumerOps[i] = new AtomicLong(0);
            consumers[i] = new Thread(() -> {
                long sum = 0;
                long ops = 0;
                while (totalConsumed.get() < expectedTotal) {
                    long value = queue.dequeue();
                    if (value != 0) {
                        sum += value;
                        ops++;
                        totalConsumed.incrementAndGet();
                    } else {
                        Thread.yield();
                    }
                }
                consumerSums[id].set(sum);
                consumerOps[id].set(ops);
            });
        }

        for (int i = 0; i < NUM_PRODUCERS; i++) producers[i].start();
        for (int i = 0; i < NUM_CONSUMERS; i++) consumers[i].start();

        for (int i = 0; i < NUM_PRODUCERS; i++) producers[i].join();
        for (int i = 0; i < NUM_CONSUMERS; i++) consumers[i].join();

        long end = System.currentTimeMillis();
        double elapsedMs = (double) (end - start);

        long totalSum = 0;
        long totalOps = 0;
        for (int i = 0; i < NUM_CONSUMERS; i++) {
            totalSum += consumerSums[i].get();
            totalOps += consumerOps[i].get();
        }

        long expectedSum = 0;
        for (int i = 0; i < NUM_PRODUCERS; i++) {
            long base = (long) i * OPS_PER_PRODUCER;
            expectedSum += (long) OPS_PER_PRODUCER * base + (long) OPS_PER_PRODUCER * (OPS_PER_PRODUCER + 1) / 2;
        }

        double opsPerSec = (double) totalOps / (elapsedMs / 1000.0);

        System.out.printf("elapsed_ms=%.3f ops_per_sec=%.0f checksum=%d expected=%d\n", 
            elapsedMs, opsPerSec, totalSum, expectedSum);
    }
}
