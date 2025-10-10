#_ Environment Set Up ------------
install.packages('tidyverse')
library('tidyverse')

#_ Load of Data ------------
data_raw <-read_tsv('../data/mt_stats.tsv')

#_ Data Exploration ------------
head(data_raw)
class(data_raw$Species)
class(data_raw$Sequence_Length)
class(data_raw$GC_Content)
summary(data_raw)

#_ Graphical Visualization of data ------------

#Bar plot of GC percentage by species
bar_plot_gc<-ggplot(data=data_raw, aes(x=Species, y=GC_Content, fill=Species)) + 
         geom_col() 
print(bar_plot_gc)

#Bar plot of size of genome
bar_plot_size <-ggplot(data_raw, aes(x=Species, y=Sequence_Length, fill=Species)) +
  geom_col()
print(bar_plot_size)

#Scatter plot to test  correlation between genome size and percentage of GC bases
scat_plot<-ggplot(data=data_raw, aes(x=Sequence_Length, y=GC_Content, color=Species)) +
  geom_point(size=4) +
  scale_color_manual(values=c('red','blue','brown','orange'))
print(scat_plot)




