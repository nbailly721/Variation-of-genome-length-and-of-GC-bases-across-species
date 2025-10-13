#!/bin/bash

# =================================================
# Project: Variation of Genome Length and GC Content Across Species
# Description: 
#   This script downloads mitochondrial genome sequences
#   for multiple species from NCBI, calculates sequence length
#   and GC content, and saves the results to a summary file.
#   The output file is later used for downstream analysis in R.
# =================================================

##_ Data download -------------

wget 'https://www.ncbi.nlm.nih.gov/sviewer/viewer.cgi?db=nuccore&id=NC_012920.1&report=fasta&retmode=text' -O human_mt.fasta
#Download Human Mitochondrial genome

wget 'https://www.ncbi.nlm.nih.gov/sviewer/viewer.cgi?db=nuccore&id=NC_005089.1&report=fasta&retmode=text' -O mouse_mt.fasta
#Download House Mouse  Mitochondrial genome

wget 'https://www.ncbi.nlm.nih.gov/sviewer/viewer.cgi?db=nuccore&id=NC_006853.1&report=fasta&retmode=text' -O cattle_mt.fasta
#Download Cattle Mitochondrial genome

wget 'https://www.ncbi.nlm.nih.gov/sviewer/viewer.cgi?db=nuccore&id=NC_001645.1&report=fasta&retmode=text' -O gorilla_mt.fasta
#Download Gorilla  Mitochondrial genome  


##_ Calculate Genome Length and GC Content per Species -------------

echo -e "Species\tSequence_Length\tGC_Content" > mt_stats.tsv

##__ Human genome -------------

echo 'Analyzing human fasta file'

total_bases_human=$(grep -v '^>' human_mt.fasta | tr -d '\n' | wc -c)
# Count bases excluding fasta header

gc_count_human=$(grep -v '^>' human_mt.fasta| tr -d '\n' | grep -o -i '[GC]' | wc -l)
# Count G and C bases (case-insensitive)

gc_percent_human=$(awk -v count="$gc_count_human" -v total="$total_bases_human" 'BEGIN{printf "%.2f" , (count/total)*100}')
# Calculate GC content percentage

echo -e "Human\t$total_bases_human\t$gc_percent_human" >> mt_stats.tsv
# Append human stats to output file


##__ Mouse genome -------------

echo 'Analyzing mouse  fasta file'

total_bases_mouse=$(grep -v '^>' mouse_mt.fasta | tr -d '\n' | wc -c)
# Count bases excluding fasta header

gc_count_mouse=$(grep -v '^>' mouse_mt.fasta| tr -d '\n' | grep -o -i '[GC]' | wc -l)
# Count G and C bases (case-insensitive)

gc_percent_mouse=$(awk -v count="$gc_count_mouse" -v total="$total_bases_mouse" 'BEGIN{printf "%.2f" , (count/total)*100}')
# Calculate GC content percentage

echo -e "Mouse\t$total_bases_mouse\t$gc_percent_mouse" >> mt_stats.tsv
# Append mouse stats to output file


##__ Cattle genome -------------

echo 'Analyzing cattle  fasta file'

total_bases_cattle=$(grep -v '^>' cattle_mt.fasta | tr -d '\n' | wc -c)
# Count bases excluding fasta header

gc_count_cattle=$(grep -v '^>' cattle_mt.fasta| tr -d '\n' | grep -o -i '[GC]' | wc -l)
# Count G and C bases (case-insensitive)

gc_percent_cattle=$(awk -v count="$gc_count_cattle" -v total="$total_bases_cattle" 'BEGIN{printf "%.2f" , (count/total)*100}')
# Calculate GC content percentage

echo -e "Cattle\t$total_bases_cattle\t$gc_percent_cattle" >> mt_stats.tsv
# Append cattle stats to output file


##__ Cattle genome -------------

echo 'Analyzing gorilla  fasta file'

total_bases_gorilla=$(grep -v '^>' gorilla_mt.fasta | tr -d '\n' | wc -c)
# Count bases excluding fasta header

gc_count_gorilla=$(grep -v '^>' gorilla_mt.fasta| tr -d '\n' | grep -o -i '[GC]' | wc -l)
# Count G and C bases (case-insensitive)

gc_percent_gorilla=$(awk -v count="$gc_count_gorilla" -v total="$total_bases_gorilla" 'BEGIN{printf "%.2f" , (count/total)*100}')
# Calculate GC content percentage

#Direct to output file
echo -e "Gorilla\t$total_bases_gorilla\t$gc_percent_gorilla" >> mt_stats.tsv
# Append gorilla stats to output file


