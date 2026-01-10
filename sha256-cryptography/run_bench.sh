#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

build() {
  local name="$1"
  local dockerfile="$2"
  echo "Building $name..."
  docker build -f "$ROOT_DIR/$dockerfile" -t "$name" "$ROOT_DIR" >/dev/null
}

run_one() {
  local name="$1"
  local runs="${RUNS:-3}"
  
  # Extract ASM
  if [[ "$name" != *python* && "$name" != *java* ]]; then
    docker run --rm "$name" objdump -d /bench/bench > "$ROOT_DIR/asm/${name}.asm" 2>/dev/null || true
  fi
  
  local times=()
  local throughputs=()
  local checksums=()
  
  for ((i=0; i<runs; i++)); do
    echo "Running $name (run $((i+1))/$runs)..."
    out="$(docker run --rm "$name")"
    elapsed="$(echo "$out" | awk -F'[= ]' '{for (i=1;i<=NF;i++) if ($i=="elapsed_ms") {print $(i+1); exit}}')"
    throughput="$(echo "$out" | awk -F'[= ]' '{for (i=1;i<=NF;i++) if ($i=="hashes_per_sec") {print $(i+1); exit}}')"
    checksum="$(echo "$out" | awk -F'[= ]' '{for (i=1;i<=NF;i++) if ($i=="checksum") {print $(i+1); exit}}')"
    times+=("$elapsed")
    throughputs+=("$throughput")
    checksums+=("$checksum")
  done

  local min mean t_mean c_out
  min="$(printf "%s\n" "${times[@]}" | sort -n | head -n1)"
  mean="$(printf "%s\n" "${times[@]}" | awk '{s+=$1} END {printf "%.3f", s/NR}')"
  t_mean="$(printf "%s\n" "${throughputs[@]}" | awk '{s+=$1} END {printf "%.0f", s/NR}')"
  c_out="${checksums[0]}"

  printf "% -15s % -12s % -12s % -15s % -20s\n" "$name" "$min" "$mean" "$t_mean" "$c_out"
}

build sha-c Dockerfile.c
build sha-cpp Dockerfile.cpp
build sha-rust Dockerfile.rust
build sha-java Dockerfile.java
build sha-zig Dockerfile.zig
build sha-fortran Dockerfile.fortran

echo
printf "% -15s % -12s % -12s % -15s % -20s\n" "lang" "min_ms" "mean_ms" "Hashes/sec" "Final Hash (Last 20)"
run_one sha-c
run_one sha-cpp
run_one sha-rust
run_one sha-java
run_one sha-zig
run_one sha-fortran
