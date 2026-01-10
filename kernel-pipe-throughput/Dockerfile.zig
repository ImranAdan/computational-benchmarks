FROM ubuntu:22.04
RUN apt-get update && apt-get install -y wget xz-utils && rm -rf /var/lib/apt/lists/*
RUN wget -q https://ziglang.org/download/0.13.0/zig-linux-aarch64-0.13.0.tar.xz && \
    tar -xf zig-linux-aarch64-0.13.0.tar.xz && \
    mv zig-linux-aarch64-0.13.0 /opt/zig && \
    rm zig-linux-aarch64-0.13.0.tar.xz
ENV PATH="/opt/zig:${PATH}"
WORKDIR /bench
COPY bench.zig .
RUN zig build-exe -O ReleaseFast -fno-stack-check bench.zig -femit-bin=bench
CMD ["./bench"]
