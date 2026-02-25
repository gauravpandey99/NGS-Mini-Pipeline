# NGS Mini Pipeline – Overview

## Author
Gaurav Pandey

## Project Goal
This project simulates a beginner-to-industry level NGS variant calling workflow.

## Pipeline Flow

FASTQ → Quality Check → Alignment → BAM Processing → Variant Calling → VCF

---

## Step Descriptions

### 1. FASTQ Input
Raw sequencing reads containing:
- Sequence ID
- DNA sequence
- Quality score

### 2. Quality Check
Assess read quality using quality scores (Phred scale).

### 3. Alignment
Map reads to reference genome using alignment tools (e.g., BWA).

### 4. BAM Processing
Convert SAM to BAM, sort and index using SAMtools.

### 5. Variant Calling
Detect SNPs and INDELs to generate VCF file.

---

## Tools Used

- Linux
- Bash
- Git
- Python (later)
- SAMtools (later)
- BWA (later)

---

## Project Structure

- raw_data/      → Input FASTQ files
- reference/     → Reference genome
- scripts/       → Pipeline scripts
- results/       → Output files
- logs/          → Execution logs
- docs/          → Documentation files
