### Exercise 10 - Dan Marshalla
## 1. Make a scatterplot out of my data

# Load data (win percentage and payroll in millions of MLB teams 2020)
MLBdata <- read.csv(file="MLB_payrollwins.csv")

# Make scatterplot and trendline using ggplot
library(ggplot2)
ggplot(data = MLBdata, aes(x=payroll, y=win.percentage)) +
  geom_point() +
  xlab("payroll (millions of dollars)") + 
  ylab("win percentage") +
  theme_classic() +
  stat_smooth(method="lm")

## 2. Make a barplot and scatterplot out of data.txt

# Load data.txt
data1 <- read.csv(file = "data.txt")

# Make barplot
ggplot(data = data1, aes(x=region, y = observations)) +
  stat_summary(fun = mean,
               geom = "bar") +
  theme_bw()


# Make scatterplot
ggplot(data = data1, aes(x=region, y = observations)) +
  geom_jitter() +
  theme_bw()

## The bar and scatterplots tell different stories because the bar only shows means
## which are about the same for all 4 regions but the scatterplot shows the distribution
## and ranges of observations which better shows how the regions differ