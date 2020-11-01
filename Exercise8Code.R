#Exercise 10
#Challenge 1
#load packages
library(ggplot2)
#load text file/read in data
plants= read.table("Plant_height.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE)
#produce a scatter plot of temperature (temp) vs plant height (height)
#Store graph as variable to be exported
Plantfig1 <- ggplot(data = plants,aes(x = temp, y = height)) + #specify dataset and variables
  geom_point(color = "blue", shape = 15, size = 2) + #specifies data points appearance
  stat_smooth(method="lm", color ="black") + #black trendline
  xlab("Temperature (°C)") + #add x axis label
  ylab("Plant Height (m)") + #add y axis label
  theme_classic() #remove gray background and gridline

#save graph to an external file
ggsave(filename = "Plantfig1.pdf",
       plot = Plantfig1,
       width = 8,
       height = 5,
       dpi = 300)

#Challenge 2
#load packages
library(ggplot2)
library(cowplot)
#load text file/read in data
data = read.table("data.txt", header=TRUE, sep=",", stringsAsFactors=FALSE)
#Graph 1: barplot of the means of the four populations(7) by region (x)
ggplot(data, aes(x = region, y = observations)) + #specify dataset and variables
  stat_summary(fun = mean, geom = "bar") + #calculates summary stats and plots
  xlab("Region") + #sets x axis label
  ylab("Mean of Populations") + #sets y axis label
  theme_classic() #Removes gray background and gridlines
#Graph 2: scatter plot of all obervations



mean(data$observations[data$region=="east"])
  



