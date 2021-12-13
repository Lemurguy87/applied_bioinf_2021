#!/bin/bash -l
#SBATCH -A snic2021-5-20
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 48:00:00
#SBATCH -J reads_mapping
#SBATCH --mail-type=ALL
#SBATCH --mail-user siqi.li.2084@student.uu.se

module load bioinfo-tools
module load bwa
module load samtools

result_folder=/proj/snic2020-5-20/applied_bioinf_2021/stacks/mapping/
data_folder=/proj/snic2020-5-20/applied_bioinf_2021/
cd $SNIC_TMP
bwa mem -t 4 $data_folder/reference_vanessa_cardui/bwa_index/Vanessa_cardui_ref_only_karyotype.fna $data_folder/trimmed_data/trimmed/P14459_106_S6_L004_R1_001_paired.fq.gz $data_folder/trimmed_data/trimmed/P14459_106_S6_L004_R2_001_paired.fq.gz > 106_map.sam
samtools view -S -b 106_map.sam > $result_folder/106_map.bam

bwa mem -t 4 $data_folder/reference_vanessa_cardui/bwa_index/Vanessa_cardui_ref_only_karyotype.fna $data_folder/trimmed_data/trimmed/P14459_107_S7_L004_R1_001_paired.fq.gz $data_folder/trimmed_data/trimmed/P14459_107_S7_L004_R2_001_paired.fq.gz > 107_map.sam
samtools view -S -b 107_map.sam > $result_folder/107_map.bam

bwa mem -t 4 $data_folder/reference_vanessa_cardui/bwa_index/Vanessa_cardui_ref_only_karyotype.fna $data_folder/trimmed_data/trimmed/P14459_111_S11_L004_R1_001_paired.fq.gz $data_folder/trimmed_data/trimmed/P14459_111_S11_L004_R2_001_paired.fq.gz > 111_map.sam
samtools view -S -b 111_map.sam > $result_folder/111_map.bam

bwa mem -t 4 $data_folder/reference_vanessa_cardui/bwa_index/Vanessa_cardui_ref_only_karyotype.fna $data_folder/trimmed_data/trimmed/P14459_113_S13_L004_R1_001_paired.fq.gz $data_folder/trimmed_data/trimmed/P14459_113_S13_L004_R2_001_paired.fq.gz > 113_map.sam
samtools view -S -b 113_map.sam > $result_folder/113_map.bam

bwa mem -t 4 $data_folder/reference_vanessa_cardui/bwa_index/Vanessa_cardui_ref_only_karyotype.fna $data_folder/trimmed_data/trimmed/P14459_122_S22_L004_R1_001_paired.fq.gz $data_folder/trimmed_data/trimmed/P14459_122_S22_L004_R2_001_paired.fq.gz > 122_map.sam
samtools view -S -b 122_map.sam > $result_folder/122_map.bam

bwa mem -t 4 $data_folder/reference_vanessa_cardui/bwa_index/Vanessa_cardui_ref_only_karyotype.fna $data_folder/trimmed_data/trimmed/P14459_127_S27_L004_R1_001_paired.fq.gz $data_folder/trimmed_data/trimmed/P14459_127_S27_L004_R2_001_paired.fq.gz > 127_map.sam
samtools view -S -b 127_map.sam > $result_folder/127_map.bam

bwa mem -t 4 $data_folder/reference_vanessa_cardui/bwa_index/Vanessa_cardui_ref_only_karyotype.fna $data_folder/trimmed_data/trimmed/P14459_131_S31_L004_R1_001_paired.fq.gz $data_folder/trimmed_data/trimmed/P14459_131_S31_L004_R2_001_paired.fq.gz > 131_map.sam
samtools view -S -b 131_map.sam > $result_folder/131_map.bam

bwa mem -t 4 $data_folder/reference_vanessa_cardui/bwa_index/Vanessa_cardui_ref_only_karyotype.fna $data_folder/trimmed_data/trimmed/P14459_132_S32_L004_R1_001_paired.fq.gz $data_folder/trimmed_data/trimmed/P14459_132_S32_L004_R2_001_paired.fq.gz > 132_map.sam
samtools view -S -b 132_map.sam > $result_folder/132_map.bam

bwa mem -t 4 $data_folder/reference_vanessa_cardui/bwa_index/Vanessa_cardui_ref_only_karyotype.fna $data_folder/trimmed_data/trimmed/P14459_141_S41_L004_R1_001_paired.fq.gz $data_folder/trimmed_data/trimmed/P14459_141_S41_L004_R2_001_paired.fq.gz > 141_map.sam
samtools view -S -b 141_map.sam > $result_folder/141_map.bam

bwa mem -t 4 $data_folder/reference_vanessa_cardui/bwa_index/Vanessa_cardui_ref_only_karyotype.fna$data_folder/trimmed_data/trimmed/P14459_142_S42_L004_R1_001_paired.fq.gz $data_folder/trimmed_data/trimmed/P14459_142_S42_L004_R2_001_paired.fq.gz > 142_map.sam
samtools view -S -b 142_map.sam > $result_folder/142_map.bam

bwa mem -t 4 $data_folder/reference_vanessa_cardui/bwa_index/Vanessa_cardui_ref_only_karyotype.fna $data_folder/trimmed_data/trimmed/P14459_144_S44_L004_R1_001_paired.fq.gz $data_folder/trimmed_data/trimmed/P14459_144_S44_L004_R2_001_paired.fq.gz > 144_map.sam
samtools view -S -b 144_map.sam > $result_folder/144_map.bam

bwa mem -t 4 $data_folder/reference_vanessa_cardui/bwa_index/Vanessa_cardui_ref_only_karyotype.fna $data_folder/trimmed_data/trimmed/P14459_153_S53_L004_R1_001_paired.fq.gz $data_folder/trimmed_data/trimmed/P14459_153_S53_L004_R2_001_paired.fq.gz > 153_map.sam
samtools view -S -b 153_map.sam > $result_folder/153_map.bam

bwa mem -t 4 $data_folder/reference_vanessa_cardui/bwa_index/Vanessa_cardui_ref_only_karyotype.fna $data_folder/trimmed_data/trimmed/P14459_159_S59_L004_R1_001_paired.fq.gz $data_folder/trimmed_data/trimmed/P14459_159_S59_L004_R2_001_paired.fq.gz > 159_map.sam
samtools view -S -b 159_map.sam > $result_folder/159_map.bam

bwa mem -t 4 $data_folder/reference_vanessa_cardui/bwa_index/Vanessa_cardui_ref_only_karyotype.fna $data_folder/trimmed_data/trimmed/P14459_161_S61_L004_R1_001_paired.fq.gz $data_folder/trimmed_data/trimmed/P14459_161_S61_L004_R2_001_paired.fq.gz > 161_map.sam
samtools view -S -b 161_map.sam > $result_folder/161_map.bam

bwa mem -t 4 $data_folder/reference_vanessa_cardui/bwa_index/Vanessa_cardui_ref_only_karyotype.fna $data_folder/trimmed_data/trimmed/P14459_169_S69_L004_R1_001_paired.fq.gz $data_folder/trimmed_data/trimmed/P14459_169_S69_L004_R2_001_paired.fq.gz > 169_map.sam
samtools view -S -b 169_map.sam > $result_folder/169_map.bam

bwa mem -t 4 $data_folder/reference_vanessa_cardui/bwa_index/Vanessa_cardui_ref_only_karyotype.fna $data_folder/trimmed_data/trimmed/P14459_170_S70_L004_R1_001_paired.fq.gz $data_folder/trimmed_data/trimmed/P14459_170_S70_L004_R2_001_paired.fq.gz > 170_map.sam
samtools view -S -b 170_map.sam > $result_folder/170_map.bam

bwa mem -t 4 $data_folder/reference_vanessa_cardui/bwa_index/Vanessa_cardui_ref_only_karyotype.fna $data_folder/trimmed_data/trimmed/P14459_174_S74_L004_R1_001_paired.fq.gz $data_folder/trimmed_data/trimmed/P14459_174_S74_L004_R2_001_paired.fq.gz > 174_map.sam
samtools view -S -b 174_map.sam > $result_folder/174_map.bam

bwa mem -t 4 $data_folder/reference_vanessa_cardui/bwa_index/Vanessa_cardui_ref_only_karyotype.fna$data_folder/trimmed_data/trimmed/P14459_176_S76_L004_R1_001_paired.fq.gz $data_folder/trimmed_data/trimmed/P14459_176_S76_L004_R2_001_paired.fq.gz > 176_map.sam
samtools view -S -b 176_map.sam > $result_folder/176_map.bam

bwa mem -t 4 $data_folder/reference_vanessa_cardui/bwa_index/Vanessa_cardui_ref_only_karyotype.fna $data_folder/trimmed_data/trimmed/P14459_178_S78_L004_R1_001_paired.fq.gz $data_folder/trimmed_data/trimmed/P14459_178_S78_L004_R2_001_paired.fq.gz > 178_map.sam
samtools view -S -b 178_map.sam > $result_folder/178_map.bam

bwa mem -t 4 $data_folder/reference_vanessa_cardui/bwa_index/Vanessa_cardui_ref_only_karyotype.fna $data_folder/trimmed_data/trimmed/P14459_188_S88_L004_R1_001_paired.fq.gz $data_folder/trimmed_data/trimmed/P14459_188_S88_L004_R2_001_paired.fq.gz > 188_map.sam
samtools view -S -b 188_map.sam > $result_folder/188_map.bam
