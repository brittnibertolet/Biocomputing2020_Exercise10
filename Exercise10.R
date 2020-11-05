#exercise 10
setwd("~/Desktop/data/Biocomputing2020_Exercise10")

#question 1
#data is Notre Dame tuition over the past 10 years
#tution is given starting in the fall semester  
Tuition<-read.csv("NDtotaltuition.csv", stringsAsFactors = F, header=TRUE)
#I expect that Notre Dame's tuition has increased over the past 10 years

library(ggplot2)
#creating a text file to put plot in
plot=ggplot(data=Tuition, aes(x=Year, y=Tuition))+
  geom_point() +
  stat_smooth(method="lm") +
  theme_classic()
print(plot)
  # save the plot to a pdf in your present working directory
  ## make sure the file name is flexible through each iteration
  ggsave(filename = paste0("NDtuition_vs_time.txt"), plot = plot)
  }

#question 2 
#using data.txt and creating two plots
data<-read.csv("data.txt", header = TRUE)
head(data)
#first plot; barplot of means of four populations 
library(ggplot2)
#using stat_summary to calculate means of each region
ggplot(data, aes(x = region, y = observations)) +
   stat_summary(fun = mean, geom = "bar") +
   xlab("region") +
   ylab("observations") +
   theme_classic()
       
#second plot; scatter plot of all observations 
#using geom_jitter to make points easier to see or alpha 0.1 in geom_scatterplot
  
  
  
  