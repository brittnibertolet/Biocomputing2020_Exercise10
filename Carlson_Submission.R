####Problem1

#My data is on world population per year, and is taken from the website:https://www.worldometers.info/world-population/#:~:text=Population%20in%20the%20world%20is,it%20was%20at%20around%202%25.

#Load ggplot package
library(ggplot2) 

#Load data, which was saved in a text file called Global_Population_Per_Year.txt"
population <- read.table("Global_Population_Per_Year.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE)

#Make scatterplot of data with trendline
ggplot(data = population, aes(x =Year, y =Pop))+
  geom_point() +
  xlab("Year") +
  ylab("World Population") +
  stat_smooth(method="lm") + #Add trendline
  theme_classic() 




###Problem2

#library(ggplot2) was already called above, so I'm not going to redo it here

#Load data.txt
info <- read.csv("data.txt", header=TRUE, sep=",", stringsAsFactors=FALSE)

#Make barplot of means of observations from each of the 4 regions in data.txt
ggplot(data=info, aes(x = region, y=observations)) +
  stat_summary(fun = mean, geom = "bar") + #Plot the means in a barplot
  xlab("Region") +
  ylab("Observations") +
  theme_classic()

#Make scatterplot of all data points
ggplot(data = info, aes(x =region, y =observations))+
  geom_jitter()+ #Included to make data points easier to see by slightly offsetting them
  xlab("Region") +
  ylab("Observations") +
  theme_classic() 


#Answer final question: Do the bar and scatter plots tell you different stories? Why?

#Yes.The barplot only shows the meansfor the observations at the four regions, which are roughly the same at about 15. This makes it seem as though
#the observations taken at all four regions were roughly the same. The scatterplot shows the distribution of the values
#of the observations at each region, which shows that the four regions have greatly different distributions of their 
#observation values.

