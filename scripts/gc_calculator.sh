#!/bin/bash

FILE="../raw_data/sample.fastq"

TOTAL_BASES=0
GC_COUNT=0

while read line
do
    if [[ $line != @* && $line != +* && $line != I* ]]
    then
        LENGTH=${#line}
        TOTAL_BASES=$((TOTAL_BASES + LENGTH))
        GC=$(echo $line | grep -o "[GC]" | wc -l)
        GC_COUNT=$((GC_COUNT + GC))
    fi
done < $FILE

GC_PERCENT=$(echo "scale=2; ($GC_COUNT/$TOTAL_BASES)*100" | bc)

echo "Total Bases: $TOTAL_BASES"
echo "GC Count: $GC_COUNT"
echo "GC Percentage: $GC_PERCENT%"
