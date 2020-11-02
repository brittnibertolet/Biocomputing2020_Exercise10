### Homework 10
# Laura Carroll
# November 6, 2020

###Part 1 - Find data that is correlated and make a scatterplot with a trend line
##Could use how much each person paid for the clothing order and how much the band
##actually got back from each payment
##This could include the anomalies where someone took the tax portion upon themselves

##Step 1: Load in the data
myData <- read.csv("", header=TRUE, stringsAsFactors = FALSE)

##Step 2: Call in the ggplot2
library(ggplot2)

##Step 3: Use ggplot to make the scatterplot and trend line
ggplot(data=myData, aes(x=, y=))+
  geom_point()+
  #I've set the trendline to a different color so that it's distinguised from the points
  stat_smooth(method="lm", color="cadetblue4")+
  xlab("")+
  ylab("")+
  theme_classic()

###Part 2 - Create a bar plot that shows the means of the four populations in 
###"data.txt", and also make a scatterplot of this data too

##Step 1: Call in the data
thisData <- read.delim("data.txt", sep = ",")

##Step 2: Set up the bar plot for the means of the data
ggplot(data=thisData, aes(x=region, y=observations))+
  stat_summary(fun=mean, geom="bar", fill="darkolivegreen3")+
  stat_summary(fun.data=mean_se, geom="errorbar", width=0.2)+
  theme_classic()

##Step 3: Create the scatterplot
ggplot(data=thisData, aes(x=region, y=observations))+
  geom_jitter(aes(color=region))+
  xlab("Region")+
  ylab("Observations")+
  theme_classic()

##These two graphs show two different stories. Overall, the means for each data
##region is the same, but the spread of the data in each region varies greatly.
##The scatterplot allows for differences between each region to become apparent
##and presents the info in a much better way than a bar graph of the mean shows.
##Overall, the most clear representation of the data comes from the scatterplot.