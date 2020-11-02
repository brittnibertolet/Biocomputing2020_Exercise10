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

