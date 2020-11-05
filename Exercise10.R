

##Q2: Generate 2 figures that summarize data.txt. 
#######1) barplot of means of 4 populations
#######2) scatterplot of all observations

data=read.table(file="data.txt",header=TRUE,sep=,)
library(ggplot2)
ggplot(data = data,aes(x = region, y= X..observations.))+
  stat_summary(fun=mean, geom="bar")+
  theme_classic()

