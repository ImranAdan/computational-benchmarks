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
  
  for ((i=0; i<runs; i++)); do
    echo "Running $name (run $((i+1))/$runs)..."
    out=$(python3 - <<EOF
import subprocess
try:
    res = subprocess.run(['docker', 'run', '--rm', '$name'], capture_output=True, timeout=180, text=True)
    print(res.stdout)
except subprocess.TimeoutExpired:
    print('elapsed_ms=180000.000 throughput_gb_sec=0.000')
except Exception as e:
    print(f'elapsed_ms=0.000 throughput_gb_sec=0.000 error={e}')
EOF
)
    elapsed="$(echo "$out" | awk -F'[= ]' '{for (i=1;i<=NF;i++) if ($i=="elapsed_ms") {print $(i+1); exit}}')"
    throughput="$(echo "$out" | awk -F'[= ]' '{for (i=1;i<=NF;i++) if ($i=="throughput_gb_sec") {print $(i+1); exit}}')"
    times+=("$elapsed")
    throughputs+=("$throughput")
  done

  local min mean t_mean
  min="$(printf "%s\n" "${times[@]}" | sort -n | head -n1)"
  mean="$(printf "%s\n" "${times[@]}" | awk '{s+=$1} END {printf "%.3f", s/NR}')"
  t_mean="$(printf "%s\n" "${throughputs[@]}" | awk '{s+=$1} END {printf "%.3f", s/NR}')"

  printf "% -15s % -12s % -12s % -15s\n" "$name" "$min" "$mean" "$t_mean"
}

build pipe-c Dockerfile.c
build pipe-cpp Dockerfile.cpp
build pipe-rust Dockerfile.rust
build pipe-java Dockerfile.java

echo
printf "% -15s % -12s % -12s % -15s\n" "lang" "min_ms" "mean_ms" "GB/sec"
run_one pipe-c
run_one pipe-cpp
run_one pipe-rust
run_one pipe-java
