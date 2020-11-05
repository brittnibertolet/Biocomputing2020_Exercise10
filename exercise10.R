#Exercise10 
setwd("/Users/kevinmichael/Desktop/BioComp/data-shell/Biocomputing2020_Exercise10")
library("ggplot2")


#1 
#Data set with PGA Tour driving disance vs accuracy is loaded 
pga <- read.table(file=pgalpga2008.txt, header=T, sep="\t")
#We subset to just include males as original data includes both sexes
#which alters the linear trendline
pgam <- subset(pga, pga$V3==2)
#now ggplot with geom_point and stat_smooth = lm to create 
#a scatter plot that includes a linear trendline
ggplot(data = pgam, aes(x = V1, y = V2)) +
  geom_point() +
  xlab("Driving Distance") + 
  ylab("Accuracy") +
  stat_smooth(method="lm") +
  theme_classic()


#2A
#First we load in data 
dat <- read.table(file=data.txt, header=T, sep="\t")
#building bar plot using stat summary to find the means of each region
ggplot(dat, aes(x = region, y = observations)) +
  stat_summary(fun.y = mean,
               geom = "bar") +
  theme_bw()


#2B
#Now we create a scatter for each region, using geom_jitter to improve visibility
ggplot(data = dat, 
       aes(x = region, y = observations)) +
  geom_jitter() +
  xlab("Region") + 
  ylab("Observations") +
  theme_classic()





