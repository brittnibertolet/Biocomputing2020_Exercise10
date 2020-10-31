#Exercise 10
#Challenge 1
#load packages
library(ggplot2)
library(cowplot)
#load text file
plants= read.table("Plant_height.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE)
#produce a scatter plot of temperature (temp) vs plant height (height)
ggplot(data = plants,aes(x = temp, y = height)) +
  geom_point(color = "blue", shape = 19, size = 2) +
  stat_smooth(method="lm") +
  xlab("Temperature (°C)") + 
  ylab("Plant Height (m)") +
  theme_classic()
#includes trendline