# Exercise 10
# Chelsea Southworth

# Question 1
# Used a kitten growth chart from google to make hypothetical age (weeks)/weight(lbs) dataset

# read in the csv file
library(readr)
kitten_growth_chart <- read_csv("~/Box/kitten_growth_chart.csv")
View(kitten_growth_chart)

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

# read the data, which is a comma separated text file
data <- read.delim("data.txt", sep = ",")

# barplot of the means of the four populations

  # calculate the means for east, north, south, west
  # create a new dataframe

# not sure why there is an 'NA' in region column, BUT it still gives us the info we need
# Group.1 column has the region, observations column has the mean
datameans <- aggregate(data, list(data$region), mean)





# scatterplot of all the observation (geom_jitter())


# Do the bar and scatter plots tell you different stories? Why?


