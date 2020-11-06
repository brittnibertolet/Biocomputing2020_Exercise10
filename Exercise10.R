#exercise 10
setwd("~/Desktop/data/Biocomputing2020_Exercise10")

#question 1
#data is Notre Dame tuition over the past 10 years
#tution is given starting in the fall semester  
Tuition<-read.csv("NDtotaltuition.csv", stringsAsFactors = F, header=TRUE)
#I expect that Notre Dame's tuition has increased over the past 10 years

library(ggplot2)
plot=ggplot(data=Tuition, aes(x=Year, y=Tuition))+  #plotting tuition over years
  geom_point() +
  stat_smooth(method="lm") +
  theme_classic()
print(plot)
  # saving the plot to a pdf in present working directory
  ggsave(filename = paste0("NDtuition_vs_time.pdf"), plot = plot)
  }

#question 2 
#using data.txt and creating two plots
data<-read.csv("data.txt", header = TRUE)
#looking at the data
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
ggplot(data,aes(x=region, y=observations, color=region)) +
  geom_jitter() +
  xlab("region") +
  ylab("observations") +
  theme_classic()

#these two plots tell a different story 
#the first plot shows the averages, making the regions look pretty similar in terms of means
#the second plot shows that there are differences in observations between the regions
#the observations seem to be pretty different between different regions
#the second plot shows a stark difference between the north and south regions
#this was not as obvious when looking at the means themselves in the first plot
  
  