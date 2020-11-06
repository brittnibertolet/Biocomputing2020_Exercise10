# Exercise 10

# Problem 1 - load a text file of two related variables and produce a scatter plot with a trendline

# My two related variables are solid waste amounts by county population in Oregon (1998)
# Source: https://seattlecentral.edu/qelp/sets/038/038.html

# load the text file, "data.txt"
mydata1 = read.table("OregonWaste.txt", sep = "\t")

# produce scatter plot with trend line
ggplot(data = mydata1, aes(x=V1, y=V2))+
  geom_point()+
  stat_smooth(method = "lm")+
  xlab("Population")+
  ylab("1988 Oregon Solid Waste amount (tons)")+
  theme_classic()


# Problem 2 - Generate two figures to summarize the data in "data.txt"

# Load the data in "data.txt" and store it in a variable
mydata2 = read.csv(file = "data.txt")

# Show a barplot of the means of the four populations
library(ggplot2)
ggplot(data=mydata2, aes(x=observations))+
  geom_bar(aes(x=region))+
  xlab("Region")+
  ylab("Number of observations")+
  theme_classic()

# Show a scatter plot of all of the observations
ggplot(data = mydata, aes(x = region, y = observations))+
  geom_jitter()+
  xlab("Region")+
  ylab("Number of Observations")+
  theme_classic()

# The two plots tell us a different story because the bar plot just tells us
# that the number of observations across all four regions are the same, while 
# the scatter plot by region shows us the actual distribution of the observations
# and whether they are well spread out or concentrated around certain numbers



