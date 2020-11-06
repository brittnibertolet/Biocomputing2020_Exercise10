# Kayla Wood Tutorial 10 assignment 
#set working directory
setwd("/Users/kaylawood/Desktop/R/Biocomputing2020_Exercise10")

# Load ggplot and cowplot packages
library(ggplot2)
library(cowplot)

## Number 1

# read in data and assign as object "parliment"
parliment= read.table("Parliment.csv", header = TRUE, sep = ",", stringsAsFactors = FALSE)
# create scatterplot of year and number  of women in parliment (Value) with a linear trendline 
w=ggplot(data= parliment, aes(x =Year, y = Value )) + 
  geom_point() +
  xlab("Year") +
  ylab("Number of Women in Parliment") +
  stat_smooth(method= "lm") +
  theme_classic()
# save file to a pdf
ggsave(filename= "Plot.pdf",
       plot= w)

## Number 2
#read in data and assign as object "data"
data <- read.table("data.txt", header=TRUE, sep = ",")
#create dataframe with mean observations for the four regions
mean <- aggregate(formula=observations~region, data= data, FUN = mean)
#create bar plot of the means of the four populations
r=ggplot(data = mean, aes(x=region, y=observations)) +
  geom_bar(stat = "identity") +
  xlab("Region") +
  ylab("Observations") +
  theme_classic()

# create a scatter plot of the observations
  # jitter the points to make it easier to see all of the observations 
k=ggplot(data= data, aes(x=region, y= observations)) +
  geom_jitter(aes(color= region), size= 0.4) +
  xlab("Region") +
  ylab("Observations") +
  theme_classic()
# The bar and scatterplots tell very different stories. 
# The bar plot shows one value, the average, of the observations accross the different regions. The averages plotted are very similar amounst the four regions.
# On the otherhand, the scatterplot includes all the data and shows that there is actually a lot of variation between the regions


