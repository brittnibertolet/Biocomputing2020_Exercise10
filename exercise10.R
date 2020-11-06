### Exercise 9

# Part 1

#install gg plot and add to library
install.packages("ggplot2")
library(ggplot2)

#scatterplot with data points from nhl player data in 2014
getwd()
list.files()

nhlplay <- read.csv("nhl_ht_wt.csv", header=TRUE, stringsAsFactors = FALSE)
str(nhlplay)

ggplot(nhlplay, aes(x=Height, y=Weight)) + geom_point() +
  geom_smooth(method=lm)

#Part 2
#bar plot of observations in data file
getwd()
list.files()

dat <- read.csv("data.txt", header=TRUE, stringsAsFactors = TRUE)
str(dat)

ggplot(dat, aes(x=region, y=observations)) +
 stat_summary(fun.y = mean,
             geom = "bar")
theme_bw()

# scatter plot of all observations
ggplot(dat, aes(x=region, y=observations)) + geom_jitter()
