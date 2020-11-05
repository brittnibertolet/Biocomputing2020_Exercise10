#Exercise10 
setwd("/Users/kevinmichael/Desktop/BioComp/data-shell/Biocomputing2020_Exercise10")
getwd()
#1
pga <- read.table(file=pgalpga2008.txt, header=T, sep="\t")
pgam <- subset(pga, pga$V3==2)
ggplot(data = pgam, 
       aes(x = V1, y = V2)) +
  geom_point() +
  xlab("Driving Distance") + 
  ylab("Accuracy") +
  stat_smooth(method="lm") +
  theme_classic()


#2

library("ggplot2")
dat <- read.csv(file=data.txt, header=T, sep="\t")


#building bar plot
#find the means 

#3
ggplot(data = dat, 
       aes(x = region, y = observations)) +
  geom_jitter() +
  xlab("Region") + 
  ylab("Observations") +
  theme_classic()





