# NGS Mini Pipeline

## Overview

This project implements a reproducible Next Generation Sequencing (NGS) variant calling workflow covering quality control, alignment, BAM processing, and variant detection.

The pipeline demonstrates an end-to-end FASTQ → VCF workflow using widely adopted bioinformatics tools.

---

## Workflow

FASTQ → FastQC → BWA Alignment → SAM → BAM → Sorted BAM → Indexed BAM → Variant Calling (VCF)

---

## Tools Used

- FastQC  
- BWA  
- SAMtools  
- BCFtools  
- Linux  
- Bash  

---

## Steps Performed

1. Quality control using FastQC  
2. Reference genome indexing using BWA  
3. Paired-end read alignment using BWA MEM  
4. SAM to BAM conversion using SAMtools  
5. Sorting and indexing BAM file  
6. Variant calling using BCFtools  

---

## Project Structure

raw_data/      - Input FASTQ files  
reference/     - Reference genome  
scripts/       - Pipeline scripts  
results/       - Output files  
logs/          - Execution logs  
docs/          - Documentation  

---

## Output Files

- FastQC HTML reports  
- Sorted BAM file  
- BAM index file (.bai)  
- VCF file containing detected variants  

---

## How To Run

./scripts/run_pipeline.sh sample_R1.fastq sample_R2.fastq

---

## Author

Gaurav Pandey  
M.Sc Biotechnology
