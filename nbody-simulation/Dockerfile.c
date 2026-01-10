FROM ubuntu:22.04

RUN apt-get update \
    && apt-get install -y --no-install-recommends clang lld binutils ca-certificates \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /bench
COPY bench.c .

RUN clang -O3 -flto -mcpu=native -fuse-ld=lld -fno-fast-math -ffp-contract=off -std=c11 bench.c -lm -o bench

CMD ["./bench"]
