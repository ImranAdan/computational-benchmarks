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
  local runs="${RUNS:-5}"
  local asm_dir="$ROOT_DIR/asm"
  mkdir -p "$asm_dir"
  local asm_file="$asm_dir/${name}.asm"
  # Only try to extract ASM for non-python/non-java runs
  if [[ "$name" != *python* && "$name" != *java* ]]; then
    docker run --rm "$name" objdump -d /bench/bench >"$asm_file" 2>/dev/null || true
  fi
  local times=()
  local checksums=()
  local out elapsed checksum
  for ((i=0; i<runs; i++)); do
    out="$(docker run --rm "$name")"
    elapsed="$(echo "$out" | awk -F'[= ]' '{for (i=1;i<=NF;i++) if ($i=="elapsed_ms") {print $(i+1); exit}}')"
    checksum="$(echo "$out" | awk -F'[= ]' '{for (i=1;i<=NF;i++) if ($i=="checksum") {print $(i+1); exit}}')"
    times+=("$elapsed")
    checksums+=("$checksum")
  done

  local sorted min median mean checksum_out
  sorted="$(printf "%s\n" "${times[@]}" | sort -n)"
  min="$(printf "%s\n" "$sorted" | head -n1)"
  mean="$(printf "%s\n" "${times[@]}" | awk '{s+=$1} END {printf "%.3f", s/NR}')"
  median="$(printf "%s\n" "$sorted" | awk -v n="${#times[@]}" 'NR==int((n+1)/2){m=$1} END{if (n%2==1) {printf "%.3f", m} else {printf "%.3f", (m+prev)/2}} {prev=$1}')"

  checksum_out="$(printf "%s\n" "${checksums[@]}" | awk 'NR==1{min=$1; max=$1} {if ($1<min) min=$1; if ($1>max) max=$1} END{if ((max-min) > 0.0001) print "varying"; else printf "%.6f", min}')"

  printf "%-10s %-10s %-10s %-10s %-12s %-20s\n" "$name" "$min" "$median" "$mean" "$checksum_out" "$(basename "$asm_file")"
}

build bench-c Dockerfile.c
build bench-cpp Dockerfile.cpp
build bench-rust Dockerfile.rust
build bench-asm Dockerfile.asm
build bench-java Dockerfile.java

echo
printf "%-10s %-10s %-10s %-10s %-12s %-20s\n" "lang" "min_ms" "median_ms" "mean_ms" "checksum" "asm"
run_one bench-c
run_one bench-cpp
run_one bench-rust
run_one bench-asm
run_one bench-java
