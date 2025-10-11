#!/bin/bash

###Loading data

#Download Human Mitochondrial genome
wget 'https://www.ncbi.nlm.nih.gov/sviewer/viewer.cgi?db=nuccore&id=NC_012920.1&report=fasta&retmode=text' -O human_mt.fasta

#Download House Mouse  Mitochondrial genome
wget 'https://www.ncbi.nlm.nih.gov/sviewer/viewer.cgi?db=nuccore&id=NC_005089.1&report=fasta&retmode=text' -O mouse_mt.fasta

#Download Cattle Mitochondrial genome
wget 'https://www.ncbi.nlm.nih.gov/sviewer/viewer.cgi?db=nuccore&id=NC_006853.1&report=fasta&retmode=text' -O cattle_mt.fasta

#Download Gorilla  Mitochondrial genome  
wget 'https://www.ncbi.nlm.nih.gov/sviewer/viewer.cgi?db=nuccore&id=NC_001645.1&report=fasta&retmode=text' -O gorilla_mt.fasta


### Prepare output file with header 
echo -e "Species\tSequence_Length\tGC_Content" > mt_stats.tsv

###Calculate genome size and GC content

##Analyze human genome
echo 'Analyzing human fasta file'

#Count total number of bases excluding the header
total_bases_human=$(grep -v '^>' human_mt.fasta | tr -d '\n' | wc -c)

#Count total number of G and C bases
gc_count_human=$(grep -v '^>' human_mt.fasta| tr -d '\n' | grep -o -i '[GC]' | wc -l)

#Count percentage of G and C bases
gc_percent_human=$(awk -v count="$gc_count_human" -v total="$total_bases_human" 'BEGIN{printf "%.2f" , (count/total)*100}')

#Direct to output file
echo -e "Human\t$total_bases_human\t$gc_percent_human" >> mt_stats.tsv




##Analyze mouse genome
echo 'Analyzing mouse  fasta file'

#Count total number of bases excluding the header
total_bases_mouse=$(grep -v '^>' mouse_mt.fasta | tr -d '\n' | wc -c)

#Count total number of G and C bases
gc_count_mouse=$(grep -v '^>' mouse_mt.fasta| tr -d '\n' | grep -o -i '[GC]' | wc -l)

#Count percentage of G and C bases
gc_percent_mouse=$(awk -v count="$gc_count_mouse" -v total="$total_bases_mouse" 'BEGIN{printf "%.2f" , (count/total)*100}')

#Direct to output file
echo -e "Mouse\t$total_bases_mouse\t$gc_percent_mouse" >> mt_stats.tsv


##Analyze cattle  genome
echo 'Analyzing cattle  fasta file'

#Count total number of bases excluding the header
total_bases_cattle=$(grep -v '^>' cattle_mt.fasta | tr -d '\n' | wc -c)

#Count total number of G and C bases
gc_count_cattle=$(grep -v '^>' cattle_mt.fasta| tr -d '\n' | grep -o -i '[GC]' | wc -l)

#Count percentage of G and C bases
gc_percent_cattle=$(awk -v count="$gc_count_cattle" -v total="$total_bases_cattle" 'BEGIN{printf "%.2f" , (count/total)*100}')

#Direct to output file
echo -e "Cattle\t$total_bases_cattle\t$gc_percent_cattle" >> mt_stats.tsv



##Analyze gorilla  genome
echo 'Analyzing gorilla  fasta file'

#Count total number of bases excluding the header
total_bases_gorilla=$(grep -v '^>' gorilla_mt.fasta | tr -d '\n' | wc -c)

#Count total number of G and C bases
gc_count_gorilla=$(grep -v '^>' gorilla_mt.fasta| tr -d '\n' | grep -o -i '[GC]' | wc -l)

#Count percentage of G and C bases
gc_percent_gorilla=$(awk -v count="$gc_count_gorilla" -v total="$total_bases_gorilla" 'BEGIN{printf "%.2f" , (count/total)*100}')

#Direct to output file
echo -e "Gorilla\t$total_bases_gorilla\t$gc_percent_gorilla" >> mt_stats.tsv

