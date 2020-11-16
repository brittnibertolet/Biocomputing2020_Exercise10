setwd("~/Desktop/Biocomputing_R/Biocomputing2020_Exercise10") #set working directory
#load ggplot and cowplot packages
library(ggplot2)
library(cowplot)
#start of problem 1
temp <- read.table(file="Temp_Snow.txt", sep="\t", header=TRUE, stringsAsFactors = FALSE) #load temperature and snow data
temp
ggplot(data=temp, 
       aes(x= temp, y= snow))+
  geom_point()+    #make scatter plot with temp on x axis and snow data on y axis
  theme_classic()+ #choose theme
  stat_smooth(method="lm")+ #add linear trendline 
  xlab("Average Annual High Temp (F)")+ #add x label
  ylab("Average Annual Snowfall (in)")+ #add y label
  ggtitle("Average Temperature and Snowfall for Largest 51 US Cities") #add title

  
  
