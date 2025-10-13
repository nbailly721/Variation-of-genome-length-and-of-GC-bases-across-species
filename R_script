# =================================================
# Project: Variation of Genome Length and GC Content Across Species
# Description:
#   This script loads mitochondrial genome stats generated from the shell script,
#   explores the data, and visualizes genome size and GC content across species.
# =================================================

#_ Environment Setup ------------
install.packages('tidyverse')
library('tidyverse')

#_ Load Data ------------
data_raw <-read_tsv('../data/mt_stats.tsv')

#_ Data Exploration ------------
head(data_raw)
# Preview first few rows of the dataset

class(data_raw$Species)
class(data_raw$Sequence_Length)
class(data_raw$GC_Content)
summary(data_raw)
# Summary statistics for each column

#_ Graphical Visualization of data ------------

bar_plot_gc<-ggplot(data=data_raw, aes(x=Species, y=GC_Content, fill=Species)) + 
         geom_col() 
print(bar_plot_gc)
# Plot showing GC content percentage for each species

bar_plot_size <-ggplot(data_raw, aes(x=Species, y=Sequence_Length, fill=Species)) +
  geom_col()
print(bar_plot_size)
# Plot showing genome length (bp) for each species

scat_plot<-ggplot(data=data_raw, aes(x=Sequence_Length, y=GC_Content, color=Species)) +
  geom_point(size=4) +
  scale_color_manual(values=c('red','blue','brown','orange'))
print(scat_plot)
# Scatter plot exploring relationship between genome size and GC content, colored by species





