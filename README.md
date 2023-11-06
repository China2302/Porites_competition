# Porites_competition

## Using this repository

This repository contains scripts and code.  To obtain raw data required to run these scripts you should do the following;

1. Checkout this repository 
```bash
git clone https://github.com/China2302/Porites_competition.git
```
2. Download the raw data and unpack it from within the project repository.
```bash
cd Porites_competition
wget 'http://data.qld.edu.au/public/Q5999/china2302/Porites_competition/data.tgz' -O data.tgz
tar -zxvf data.tgz

# This is a much larger file required for some analyses only
wget 'http://data.qld.edu.au/public/Q5999/china2302/Porites_competition/data.transcriptome.tgz' -O data.transcriptome.tgz
tar -zxvf data.transcriptome.tgz
```

### Data Processing

- [Initial Transcriptome Assembly](hpc/Assembly)
- [Symbiont Transcript Removal](hpc/psytrans)
- [Clustering transcripts and counting assigned reads](hpc/corset)
- [Functional Annotation with Trinotate](hpc/trinotate)
- [Genotyping](hpc/genotypes)

### Statistical Analysis and Visualisation

- [Gene Annotation](01_annotate.md)
- [Differential Expression Analysis](02_deseq.md)
- [Analysis of Polyp Activity Observations](04_polyp_activity.md)
- [Gene Function Analysis](05_gene_function.md)
- [Relatedness](09_genotyping.md)
- [Taxonomic Profiling of Raw Reads](07_kraken.md)