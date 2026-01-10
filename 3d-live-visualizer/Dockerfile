FROM ubuntu:22.04
RUN apt-get update && apt-get install -y --no-install-recommends curl clang lld binutils ca-certificates build-essential && rm -rf /var/lib/apt/lists/*
RUN curl -sSf https://sh.rustup.rs | sh -s -- -y --profile minimal --default-toolchain stable
ENV PATH=/root/.cargo/bin:$PATH
WORKDIR /app
COPY Cargo.toml .
COPY build.rs .
COPY src ./src
COPY static ./static
RUN cargo build --release
EXPOSE 8080
CMD ["./target/release/live-3d-backend"]
