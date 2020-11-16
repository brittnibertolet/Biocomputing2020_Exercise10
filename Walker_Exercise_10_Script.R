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

#Start of problem 2
data <- read.table(file="data.txt", sep=",", header=TRUE, stringsAsFactors = FALSE) #load data 
head(data) #check that data loaded correctly
data_means <- aggregate(x= data$observations,
          by =list(data$region), 
          FUN= mean) #get means for each region 
colnames(data_means) = c("Region", "Means") #change column names of data_means
head(data_means) #check that data_means is correct


  ggplot(data=data_means, aes(x=Region, y=Means, fill=Region))+
    geom_bar(stat="identity")+ #create bar graph by region and means
    xlab("Region")+
    ylab("Mean")+
    ggtitle("Means by Region")

    
  