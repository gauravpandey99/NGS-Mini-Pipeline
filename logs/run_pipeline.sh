#!/bin/bash

# Define input and log file
FASTQ_FILE="../raw_data/sample.fastq"
LOG_FILE="../logs/pipeline.log"

# Input validation
if [ ! -f "$FASTQ_FILE" ]; then
    echo "Error: FASTQ file not found!"
    exit 1
fi

echo "Starting NGS Mini Pipeline..." | tee "$LOG_FILE"
echo "--------------------------------" | tee -a "$LOG_FILE"

echo "Step 1: Counting Reads" | tee -a "$LOG_FILE"
./read_counter.sh | tee -a "$LOG_FILE"

echo "--------------------------------" | tee -a "$LOG_FILE"

echo "Step 2: Calculating GC Content" | tee -a "$LOG_FILE"
./gc_calculator.sh | tee -a "$LOG_FILE"

echo "--------------------------------" | tee -a "$LOG_FILE"
echo "Pipeline Completed Successfully!" | tee -a "$LOG_FILE"
