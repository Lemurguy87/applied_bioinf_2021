#!/bin/bash -l

#SBATCH -A snic2021-5-20
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 20:00:00
#SBATCH -J FastQC 
#SBATCH --mail-type=ALL
#SBATCH --mail-user gustav.ahlstrom.1142@student.uu.se

module load bioinfo-tools 
module load FastQC/0.11.9 

cd /home/guah1142/applied_bioinf/soft_link_data

for file in *;
do

        fastqc $file

done 
