# Load the data from excel, saving it as a .csv
MariahChristmas<-read.csv("Exercise 10 MC Data - Sheet1.csv", header = TRUE, stringsAsFactors = FALSE)

# Load ggplot
library(ggplot2)
library(cowplot)
# Create the scatterplot
ggplot(data = MariahChristmas, aes(x= Days, y= Streams))+
  geom_point()+
  stat_smooth(method ="lm")+
  xlab("November 15th to Christmas")+
  ylab("Number of Streams (in millions)")+
  theme_classic()
  
# 2 - Script that generates two figures that summarize data.txt

# Load data.txt
datastuff<-read.table("data.txt", header = TRUE, sep = ",", stringsAsFactors = FALSE)

# create bar plot of means of four regions
ggplot(data = datastuff, aes(x=region, y=observations))+
  stat_summary(fun.y = mean,
               geom = "bar",
               color = "purple")+
  theme_classic()

#Create a scatterplot of all observations
ggplot(data = datastuff, aes(x = region, y = observations, color = as.factor(region)))+
  geom_jitter()+
  xlab("Regions")+
  ylab("# of Observations")+
  scale_color_manual(values = c('blue', 'orange','red', 'purple'))
  theme_classic()
  
# Do the bar and scatter plots tell you a different story?
  # Yes, as the means of the bar plot only tell us the averages are the same. But the scatterplot shows us 
  # the distribution of observations of each region is very very different.