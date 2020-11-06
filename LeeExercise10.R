#### Exercise 10 ####

### Problem 1
# Make data text file then write script that loads text file 
#     and produces scatter plot that includes trend line

## Steps
# load data with read.csv()
# load ggplot2 
# scatter plot, add data for both variables
# add axis labels
# add trend line

hungrykitchen<-read.csv("HungryKitchen.csv", header = TRUE)
library(ggplot2)
ggplot(data = hungrykitchen, aes(x=Hungry, y=Kitchen)) +
  geom_point() +
  xlab("Hungry Time") +
  ylab("Kitchen Time") +
  stat_smooth(method="lm") +
  theme_classic() 
  

### Problem 2
# Write script for two figures to summarize "data.txt"
# Barplot of means of the four populations
# Scatter plot of all observations (use geom_jitter())
# Do the plots telll you different stories? Why?

## Steps
# load data.txt
# load ggplot2
# get means of each population and store in variables
#   make vectors for regions
#   for loop to iterate through data
#   if else statement for region, then append into separate vectors
#   calculate mean for each region and store in variable
# make barplot with means
# scatter of all observations using jitter

data<-read.csv("Biocomputing2020_Exercise10/data.txt")
library(ggplot2)

# vectors with all observations by region
north<-c()
south<-c()
east<-c()
west<-c()

for (i in 1:nrow(data)){
  if (data$region[i]=="north"){
    north<-append(north, data$observations[i])
  }else if (data$region[i]=="south"){
    south<-append(south, data$observations[i])}
  else if (data$region[i]=="east"){
    east<-append(east, data$observations[i])}
  else{ west<-append(west, data$observations[i])}
}

means<-c(mean(north), mean(south), mean(east), mean(west))
names<-c("north", "south", "east", "west")

# data frame for means
meansDF<-data.frame("Region" = names, "Mean" = means)

# bar plot of means
ggplot(meansDF, aes(x = Region)) +
  geom_bar() +
  theme_bw() +
  xlab("Region") 

# scatter of all observations
ggplot(data, aes(x = region, y = observations)) +
  geom_jitter()

# The plots tell different stories. 
# Bar makes all regions look the same
# Scatter shows more distribution within region for some


