#exercise 10
setwd("~/Desktop/data/Biocomputing2020_Exercise10")

#question 1
#data is Notre Dame tuition over the past 10 years
#tution is given starting in the fall semester  
Tuition<-read.csv("NDtotaltuition.csv", stringsAsFactors = F, header=TRUE)
#I expect that Notre Dame's tuition has increased over the past 10 years

library(ggplot2)
#creating a text file to put plot in
NDtuition_vs_time<-file("NDtuition_vs_time.txt")
plot=ggplot(data=Tuition, aes(x=Year, y=Tuition))+
  geom_point() +
  stat_smooth(method="lm") +
  theme_classic()
print(plot)
  # save the plot to a pdf in your present working directory
  ## make sure the file name is flexible through each iteration
  ggsave(filename = paste0("NDtuition_vs_time.txt"), plot = plot)
  }


  
  
  
  
  
  