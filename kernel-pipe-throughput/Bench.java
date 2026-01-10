import java.io.*;
import java.util.Arrays;

public class Bench {
    private static final long TOTAL_BYTES = 10L * 1024 * 1024 * 1024; // 10 GB
    private static final int BUFFER_SIZE = 64 * 1024;                  // 64 KB

    public static void main(String[] args) throws Exception {
        if (args.length > 0 && args[0].equals("child")) {
            runChild();
        } else {
            runParent();
        }
    }

    private static void runChild() throws IOException {
        byte[] buffer = new byte[BUFFER_SIZE];
        long totalReceived = 0;
        byte checksum = 0;
        InputStream in = System.in;

        while (totalReceived < TOTAL_BYTES) {
            int n = in.read(buffer);
            if (n <= 0) break;
            for (int i = 0; i < n; i++) checksum ^= buffer[i];
            totalReceived += n;
        }
        System.out.printf("CHECK:%02x\n", checksum);
        System.out.flush();
    }

    private static void runParent() throws Exception {
        String javaCmd = System.getProperty("java.home") + "/bin/java";
        ProcessBuilder pb = new ProcessBuilder(javaCmd, "-cp", System.getProperty("java.class.path"), "Bench", "child");
        
        byte[] buffer = new byte[BUFFER_SIZE];
        for (int i = 0; i < BUFFER_SIZE; i++) buffer[i] = (byte) i;

        Process process = pb.start();
        OutputStream out = process.getOutputStream();
        InputStream childStdout = process.getInputStream();

        long start = System.currentTimeMillis();
        long totalSent = 0;

        while (totalSent < TOTAL_BYTES) {
            out.write(buffer);
            totalSent += BUFFER_SIZE;
        }
        out.flush();
        out.close();

        // Read child's CHECK output from its stdout
        BufferedReader reader = new BufferedReader(new InputStreamReader(childStdout));
        String line;
        while ((line = reader.readLine()) != null) {
            if (line.startsWith("CHECK:")) {
                System.out.println(line);
            }
        }

        process.waitFor();
        long end = System.currentTimeMillis();
        
        double elapsedMs = (double) (end - start);
        double throughput = (TOTAL_BYTES / 1024.0 / 1024.0 / 1024.0) / (elapsedMs / 1000.0);

        System.out.printf("elapsed_ms=%.3f throughput_gb_sec=%.3f\n", elapsedMs, throughput);
    }
}
