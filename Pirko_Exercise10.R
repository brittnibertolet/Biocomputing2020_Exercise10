#Exercise 10

#Install ggplot
install.packages("ggplot2")
install.packages("cowplot")

#Load the package
library(ggplot2)
library(cowplot)

#Q1: find data on 2 variables related to each other, enter into Excel
#Load the Excel file
studyscore <- read.csv("/Users/melissapirko/Downloads/data-shell/Biocomputing2020_Exercise10/studytimeGPA.csv")

#Produce a scatter plot with ggplot, stat_smooth(method="lm") adds the trendline
ggplot(data=studyscore, aes(x=Hours.Studied, y=Exam.Score, color=Exam.Score)) +
  geom_point() +
  stat_smooth(method="lm") + 
  xlab("Hours Studied") + 
  ylab("Exam Score") 

#Q2: 2 figures that summarize data.txt- barplot of means of 4 pops, scatterplot of all
#use geom_jitter() to make it easier or alpha in geom_scatterplot() to 0.1
#Load the data.txt file
data <- read.csv("/Users/melissapirko/Downloads/data-shell/Biocomputing2020_Exercise10/data.txt")

#Bar plot of means of 4 populations
ggplot(data, aes(x = region, y = observations, fill = as.factor(region))) +
  stat_summary(fun = mean, geom = "bar") +
  xlab("Region") +
  ylab("Average Observation") +
  scale_color_manual(values=c("pink","cyan","purple"," green"))
  theme_classic()

#Scatterplot of all observations
#geom_jitter makes the data looks like dots more spread apart rather than dots lined up in a row and easier to see
ggplot(data,aes(x = region, y = observations, color = as.factor(region))) + 
  geom_jitter() +
  xlab("Region") +
  ylab("Observations") + 
  scale_color_manual(values=c("pink","cyan","purple"," green"))
  theme_classic()

#Do bar & scatterplot tell different stories? Why?
##Yes, they do since the scatterplot shows you all of the points and lets you better visualize the spread of the data, while the bar graphs only show you the means and they appear to be rather close together. You would not see the spread in south with the huge gap, for instance, in the bar graph.
  