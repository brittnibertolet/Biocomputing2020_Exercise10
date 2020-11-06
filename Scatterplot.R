#script to plot data on variables suspected to be related



#Made a csv file from data obtained from dataworld.com
incomevsyear <- read.csv("incomevsyears.csv", header = TRUE)
head(incomevsyear)

#load ggplot library
library(ggplot2)

#Plot data with an added trendline

incomeovertime <- ggplot(data=incomevsyear, aes(x=Year,y=Income))+

geom_point(color="blue")+

xlab("Year")+
ylab("Per Capita Income")+
stat_smooth(method="lm",color="red")
  
incomeovertime


