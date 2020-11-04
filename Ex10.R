# Exercise 10

# 1. found excel data of college GPA and SAT scores 
# and make scatter plot

#read in file
satgpa=read.csv("satandgpa.csv",header=TRUE)
head(satgpa) # see column names etc.

# get ggplot library
library(ggplot2)

# make scatter plot with trend line
collegedata=ggplot(data=satgpa,aes(x=SAT.Score,y=College.GPA))+
  # make scatter plot
  geom_point(color="turquoise")+
  # make trend line
  stat_smooth(method="lm",
              color="black")+
  ylab("College GPA")+
  xlab("SAT Score")+
  theme_classic()

collegedata

# 2. write script for data.txt to make 2 figures

# read in data.txt
data=read.csv(file="data.txt",header=TRUE)
head(data) # see what data looks like

# barplot of means of four populations
databar=ggplot(data=data,aes(x=region,y=observations))+
  stat_summary(fun=mean, # graphs means of obs
               geom="bar",
               aes(fill=region))+ # makes bars dif colors
  theme_classic()+
  theme(legend.position="none") #removes second legend

databar

#scatterplot of all observations
datascat=ggplot(data=data,aes(x=region,y=observations))+
  geom_point(size=0.1,
             color="red")+
  geom_jitter(size=0.1)+
  theme_classic()

datascat

# the bar and scatter plots tell different stories
# bar graph= only tells means, not data distribution (i.e. skewed)
# scatterplot= tells distribution of data
