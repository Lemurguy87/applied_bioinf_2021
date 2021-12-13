#!/bin/bash -l
#SBATCH -A snic2021-5-20
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 20:00:00
#SBATCH -J trim_data
#SBATCH --mail-type=ALL
#SBATCH --mail-user matilda.maxwell.5390@student.uu.se


# Load modules
module load bioinfo-tools
module load trimmomatic
# commands

#for i in {101..196}
#do
#	let i2=$i-100
#	file1=P14459_${i}_S${i2}_L004_R1_001
#	file2=P14459_${i}_S${i2}_L004_R2_001
#	java -jar /sw/apps/bioinfo/trimmomatic/0.36/rackham/trimmomatic-0.36.jar PE -phred33 /home/mama5390/applied_bioinf/data/subset_raw_data/${file1}.fastq.gz /home/mama5390/applied_bioinf/data/subset_raw_data/${file2}.fastq.gz /home/mama5390/applied_bioinf/data/trimmed/${file1}_forward_paired.fq.gz /home/mama5390/applied_bioinf/data/trimmed/${file1}_forward_unpaired.fq.gz /home/mama5390/applied_bioinf/data/trimmed/${file1}_reverse_paired.fq.gz /home/mama5390/applied_bioinf/data/trimmed/${file1}_reverse_unpaired.fq.gz ILLUMINACLIP:/sw/bioinfo/trimmomatic/0.36/rackham/adapters/TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
#done

for file in /home/mama5390/applied_bioinf/data/subset_raw_data/*
do
	file1=${file%.fast*}
	file2=${file1#*_data/*}
        java -jar /sw/apps/bioinfo/trimmomatic/0.36/rackham/trimmomatic-0.36.jar PE -phred33 /home/mama5390/applied_bioinf/data/subset_raw_data/${file2}.fastq.gz /home/mama5390/applied_bioinf/data/subset_raw_data/${file2}.fastq.gz /home/mama5390/applied_bioinf/data/trimmed/${file2}_forward_paired.fq.gz /home/mama5390/applied_bioinf/data/trimmed/${file2}_forward_unpaired.fq.gz /home/mama5390/applied_bioinf/data/trimmed/${file2}_reverse_paired.fq.gz /home/mama5390/applied_bioinf/data/trimmed/${file2}_reverse_unpaired.fq.gz ILLUMINACLIP:/sw/bioinfo/trimmomatic/0.36/rackham/adapters/TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
done
