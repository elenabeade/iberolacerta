#!/bin/bash
#SBATCH -N 1
#SBATCH -c 24
#SBATCH -p thinnodes
#SBATCH -t 96:00:00
module load gcc/6.4.0 stacks/2.41
denovo_map.pl -T 30 -o ./stacks-out-ib/explore-param/ib-m3M1n2-R80-mm1-gt05-var05 --samples ./reads_Ib/IBERO-Process-radtags --paired --popmap ./popmaps/PopMap_explore_param -X "ustacks:-m 3 -M 1 --max_gaps 2" -X "cstacks:-n 2" -X "gstacks:--var-alpha 0.05 --gt-alpha 0.05" -X "populations:-R 0.8 --min-maf 0.01 --fstats --fst_correction p_value --hwe --fasta-samples"

