# NGS Mini Pipeline v2

## Overview
This project demonstrates a basic Next Generation Sequencing (NGS) analysis workflow including quality control, alignment, BAM processing, and variant calling.

## Workflow

FASTQ → FastQC → BWA Alignment → SAM → BAM → Sorted BAM → Indexed BAM → Variant Calling (VCF)

## Tools Used
- FastQC
- BWA
- SAMtools
- BCFtools

## Steps Performed

1. Quality Control using FastQC
2. Reference genome indexing using BWA
3. Paired-end read alignment using BWA MEM
4. SAM to BAM conversion using SAMtools
5. Sorting and indexing BAM file
6. Variant calling using BCFtools

## Output Files
- QC Reports (HTML)
- Sorted BAM file
- BAM index file (.bai)
- VCF file containing variants

## Author
Gaurav Pandey
M.Sc Biotechnology
