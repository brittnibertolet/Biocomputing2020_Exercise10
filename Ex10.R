# Exercise 10

# Usage:

# 1. found excel data of college GPA and SAT scores 
# and make scatter plot

#read in file
satgpa=read.csv("satandgpa.csv",header=TRUE)
head(satgpa)

# get ggplot library
library(ggplot2)

# make scatter plot with trend line
ggplot(data=satgpa,aes(x=SAT.Score,y=College.GPA))+
  # make scatter plot
  geom_point(color="turquoise")+
  # make trend line
  stat_smooth(method="lm")+
  ylab("College GPA")+
  xlab("SAT Score")+
  theme_classic()

# 2. write script for data.txt to make 2 figures

# read in data.txt
data=read.csv(file="data.txt",header=TRUE)
head(data)

# barplot of means of four populations
