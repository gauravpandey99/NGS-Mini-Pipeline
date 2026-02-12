#!/bin/bash

# Read Counter Script
# Counts number of sequencing reads in a FASTQ file

FILE=$1

if [ -z "$FILE" ]; then
    echo "Error: No FASTQ file provided."
    exit 1
fi


TOTAL_LINES=$(wc -l < $FILE)
READS=$((TOTAL_LINES / 4))

echo "Total lines: $TOTAL_LINES"
echo "Total reads: $READS"
