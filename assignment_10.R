# exercise 10
# 1. These data can come from your own research, your daily life, or the 
# internet. Enter those data into a text file or Excel and then save a text 
# file, and write a script that loads this text file and produces a scatter 
# plot of those two variables that includes a trend line.
# load ggplot
library(ggplot2)
# sample data kinetic_data

kinetics<-read.delim("kineticdata", header=TRUE, stringsAsFactors = FALSE)
dim(kinetics)

# generation of the scatter plot with ggplot
ggplot(data=kinetics,aes(x=concentration,y=averageVo)) +
geom_point() +
theme_classic() +
xlab("Concentration (uM)") +
ylab("average initial velocity") +
stat_smooth(method="lm") 


# 2. Given the data in “data.txt”. Write a script that generates two 
##figures that sumamrize the data. 
###First, show a barplot of the means of the four populations. 
###Second, show a scatter plot of all of the observations. 
##You may want to “jitter” the points (geom_jitter()) to make it easier to 
##see all of the observations within a population in your scatter plot. 
##Alternatively, you could also try setting the alpha argument in 
##geom_scatterplot() to 0.1. Do the bar and scatter plots tell you different 
##stories? Why?

# read in the data file data.txt
data<-read.csv("data.txt", header = TRUE, stringsAsFactors = FALSE) 
#data organized x=region y=observation use stat_summary to get the means
# then use ggplot and geom_bar to get a barplot. This solves part 1 of number 2

ggplot(data, aes(x=region, y=observations)) +
  stat_summary(fun = mean, geom = "bar") +
  xlab("Cardinal Direction") +
  ylab("Average observation") +
  theme_classic()
 
# part 2- need to make a scatter plot of all observations

ggplot(data,aes(x = region, y = observations)) + 
  geom_point() +
  geom_jitter() +
  xlab("Cardinal direction") +
  ylab("Observations") + 
  theme_classic()

# the bar plot tells me the average observation in each of the cardinal 
# directions but the scatter plot shows the distribution of the observations
# in the cardinal directions

  






