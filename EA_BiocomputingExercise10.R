# Biocomputing Exercise 10 

# first things first, load packages and set working directory!
setwd("/Users/aleksandrove/Desktop/r-novice-inflammation/Biocomputing2020_Exercise10")
library(ggplot2)
library(cowplot)

# Challenge 1:
# Find some data on two variables that you would expect to be related 
# to each other. These data can come from your own research, your daily 
# life, or the internet. Enter those data into a text file or Excel and 
# then save a text file, and write a script that loads this text file and 
# produces a scatter plot of those variables that includes a trend line.


# I am using absorbance data for a calibration curve I made last year
# Read in the data file:
CdCalibration = read.table("EA_CdCalibration_Biocomp.txt", sep = "," , header = T)
View(CdCalibration)
# Plot absorbance vs concentration 
 
ggplot(data = CdCalibration,aes(x = ReportedConc.mg.L., y = SignalArea)) +
  geom_point() +
  # to add linear regression line (black)
  stat_smooth(method="lm", se=FALSE, color="black") +
  # change axes labels to something more user friendly
  xlab("Concentration (mg/L)") +
  ylab("Absorbance") +
  theme_classic()


# Challenge 2:

# Given the data in “data.txt”. Write a script that generates two figures 
# that summarize the data. First, show a barplot of the means of the four 
# populations. Second, show a scatter plot of all of the observations. 
# You may want to “jitter” the points (geom_jitter()) to make it easier to 
# see all of the observations within a population in your scatter plot. 
# Alternatively, you could also try setting the alpha argument in 
# geom_scatterplot() to 0.1. 

# load in the data
data = read.table("data.txt", sep = "," , header = T)
View(data)
# Create the barplot
p1 <- ggplot(data, aes(x = region, y = observations, fill = region)) +
  stat_summary(fun.y = mean,
               geom = "bar") +
  stat_summary(fun.data = mean_se,
               geom = "errorbar",
               width = 0.3) +
  theme_classic()

#Create the scatterplot with "jitter" addition
p2 <- ggplot(data = data,aes(x = region, y = observations)) +
  # note: can omit geom_point() but I like how it looks like combined with jitter!
  geom_point() +
  geom_jitter(aes(color = region)) +
  theme_classic()

# plot both side by side 
plot_grid(p1,p2)
ggsave("SummaryFigures_data", plot = last_plot(), device = "pdf", scale = 1, dpi = 300,
  limitsize = TRUE)


# Do the bar and scatter plots tell you different stories? Why?

# Yes! Looking at the barplot all we can see is that the mean 
# observations are very similar (almost equal) across the 4 regions.
# on the other hand, the scatterplot is showing us the data distribution, 
# which tells us that although they might have the same mean value, the 
# individual observations vary greatly across each group






