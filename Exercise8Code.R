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
#Graph 1: barplot of the means of the four populations(y) by region (x)
#Set both graphs as variables 
graph1 <- ggplot(data, aes(x = region, y = observations)) + #specify dataset and variables
  stat_summary(fun = mean, geom = "bar") + #calculates summary stats and plots
  xlab("Region") + #sets x axis label
  ylab("Observations") + #sets y axis label
  ggtitle("Mean Observations of Regions") +
  theme_classic() #Removes gray background and gridlines
#Graph 2: scatter plot of all obervations

graph2 <- ggplot(data = data,aes(x = region, y = observations, color = region)) + #specify dataset and variables and color coordinate by region
  geom_jitter()+ #prevents overplotting
  xlab("Region") + #add x axis label
  ylab("Observations") + #add y axis label
  ggtitle("All Observations of Regions")+
  theme_classic() #removes gray background and gridlines

#put the subplots together in a variable called "fig1"
fig1 <- plot_grid(graph1,graph2, 
  labels = c("a", "b"),
  rel_widths = c(1,1),
  ncol = 2,
  nrow = 1)

#save your figure to an external file
ggsave(filename = "Fig1.pdf",#what you want to save file as
       plot = fig1,
       width = 8,
       height = 5,
       dpi = 300)


#The barplot shoes that the mean obervations of each region are approximately the same
#however, the scatterplot actually shows a greater variation and deviation between the regions
#Meaning, their ranges/spreads are actually quite different but still surround the same average.
#Averages aren't always accurate representations of the entire population because outliers can skew the data.



