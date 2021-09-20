#!/bin/bash
#BATCH -N 1
#SBATCH -c 24
#SBATCH -p thinnodes
#SBATCH -t 6:00:00
module load gcc/6.4.0 stacks/2.41
populations -P ./ib-stacks-out/ib-all-m3M1n2-var5-gt5 -O ./ib-stacks-out/ib-all-m3M1n2-var5-gt5/popout-order-R80-mm1-moh70-singleSNP-blacklist -M ./ib-popmaps/ib-popmap-10pop.txt -R 0.8 --min-maf 0.01 --max-obs-het 0.7 --write-single-snp --blacklist ./loci_Z/bl_Z+alin.txt --hwe --fstats --fst_correction p_value --fasta-loci --fasta-samples --genepop --structure --plink
