#Exercise 10
#Challenge 1
#load packages
library(ggplot2)
#load text file
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
