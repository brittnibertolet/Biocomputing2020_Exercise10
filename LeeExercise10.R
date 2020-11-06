#### Exercise 10 ####

### Problem 1
# Make data text file then write script that loads text file 
#     and produces scatter plot that includes trend line

## Steps
# load data with read.csv()
# load ggplot 
# scatter plot, add data for both variables
# add axis labels
# add trend line

hungrykitchen<-read.csv("HungryKitchen.csv", header = TRUE)
library(ggplot2)
ggplot(data = hungrykitchen, aes(x=Hungry, y=Kitchen)) +
  geom_point() +
  xlab("Hungry Time") +
  ylab("Kitchen Time") +
  stat_smooth(method="lm") +
  theme_classic() 
  

### Problem 2
# Write script for two figures to summarize "data.txt"
# Barplot of means of the four populations
# Scatter plot of all observations (use geom_jitter())
# Do the plots telll you different stories? Why?


