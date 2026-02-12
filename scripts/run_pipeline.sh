#!/bin/bash

# ==============================
# NGS Mini Pipeline v1.0
# Author: Gaurav
# ==============================

LOG_FILE="../logs/pipeline.log"

usage() {
    echo "Usage: $0 <FASTQ_FILE>"
    echo "Example: $0 ../raw_data/sample.fastq"
    exit 1
}

# Check if argument provided
if [ $# -ne 1 ]; then
    usage
fi

FASTQ_FILE="$1"

# Check if file exists
if [ ! -f "$FASTQ_FILE" ]; then
    echo "Error: FASTQ file not found!"
    exit 1
fi

echo "====================================" | tee "$LOG_FILE"
echo "Starting NGS Mini Pipeline..." | tee -a "$LOG_FILE"
echo "====================================" | tee -a "$LOG_FILE"

echo "Step 1: Counting Reads" | tee -a "$LOG_FILE"
./read_counter.sh "$FASTQ_FILE" | tee -a "$LOG_FILE"

echo "------------------------------------" | tee -a "$LOG_FILE"

echo "Step 2: Calculating GC Content" | tee -a "$LOG_FILE"
./gc_calculator.sh "$FASTQ_FILE" | tee -a "$LOG_FILE"

echo "------------------------------------" | tee -a "$LOG_FILE"

echo "Pipeline Completed Successfully!" | tee -a "$LOG_FILE"
