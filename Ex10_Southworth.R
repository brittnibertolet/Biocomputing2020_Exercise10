# Exercise 10
# Chelsea Southworth

# Question 1
# Used a kitten growth chart from google to make hypothetical age (weeks)/weight(lbs) dataset

# read in the csv file
library(readr)
kitten_growth_chart <- read_csv("~/Box/kitten_growth_chart.csv")

# simplify file name for ease of coding
kgc <- kitten_growth_chart

# load ggplot2
library(ggplot2)

# plot a scatterplot, add in the trendline with error bar shading, change the title and labels to be more informative
ggplot(kgc, aes(x=age, y=weight)) + geom_point() +
  geom_smooth(method=lm) + 
  ggtitle("Kitten Weight in First 16 Weeks") + 
  xlab("age (weeks)") + 
  ylab("weight (pounds)")


# Question 2

# read in the data, which is a comma separated text file
data <- read.delim("data.txt", sep = ",")

# barplot of the means of the four populations

  # calculate the means for east, north, south, west
  # create a new dataframe
# not sure why there is an 'NA' in region column, BUT it still gives us the info we need
  # I don't know if this is best practice, but if this was my own project I would move forward like I do here, because it would waste a lot of time for me to try to figure out what was wrong and how to fix it, and I got the data I needed if in a slightly off format
# "Group.1" column is the region, "observations" column is the mean
datameans <- aggregate(data, list(data$region), mean)

ggplot(datameans, aes(Group.1,observations)) + 
  geom_bar(stat="identity") +
  ggtitle("mean of observations by region") +
  xlab("region") +
  ylab("mean")


# scatterplot of all the observation (geom_jitter())
ggplot(data, aes(x=region, y=observations)) + 
  geom_jitter() +
  ggtitle("observations by region")


# Do the bar and scatter plots tell you different stories? Why?
# YES. The bar plot just shows the means, which are all very close to each other.
# The scatterplot shows the entire spread of the data.
# Despite all of the means being similar, the ranges are different. For example, west ranges from 0-30, east ranges from 0-30 but clusters more in the 5-25 region, whereas north is tightly clustered around the mean of ~15, and south has a clump of observations from 20-30 and a clump right around 5
# Based on the bar plot alone, you would think all four regions had overall similar measurements. This is clearly not the case when looking at the scatterplot
# This is also a situation where things like range and standard deviation are really helpful.

