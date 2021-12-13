#!/bin/bash -l
#SBATCH -A snic2021-5-20
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 20:00:00
#SBATCH -J quality_control
#SBATCH --mail-type=ALL
#SBATCH --mail-user matilda.maxwell.5390@student.uu.se


# Load modules
module load bioinfo-tools
module load FastQC
# commands

#fastqc -o ../data/fastqc/raw ../data/raw_data/*
fastqc -o /home/mama5390/applied_bioinf/data/fastqc/raw /home/mama5390/applied_bioinf/data/raw_data/*
