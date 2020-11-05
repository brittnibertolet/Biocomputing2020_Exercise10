setwd("~/Desktop/Biocomputing/Biocomputing2020_Exercise10/")
#problem 1
#produce scatter plot with trendline
cov <- read.csv("NA_COVID.csv", header = TRUE)
ggplot(data=cov, aes(x = cumulative.cases.per.million, y = cumulative.deaths.per.million))+
  geom_point()+ #makes the graph a scatterplot
  geom_smooth(method = "lm")+ #adds the trendline
  theme_classic()
#problem 2
data <- read.table("data.txt", header = TRUE, sep = ",") #load dataset
library(ggplot2) #call ggplot
#barplot of the means of the four populations
ggplot(data= data, aes(x = region, y = observations))+
  stat_summary(fun="mean", geom="bar")+
  theme_classic() 
#scatterplot of all observations, might want to use geom_jitter()
ggplot(data= data, aes(x = region, y = observations))+
  geom_jitter()+
  theme_classic()
#the two graphs tell very different stories. Just looking at the means you would assume each region 
#   is roughly similar. Looking at the scatterplot, you can tell the regional data differs significantly
#   in its distribution