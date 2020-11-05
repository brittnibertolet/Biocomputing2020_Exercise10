#Q1: Find a dataset, plot a scatter plot and add a trend line
#This is a historical dataset I found online of number of lynx trapped in Canada each year
lynx=read.table(file = "lynx.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE) #this loads the datafile into R
library(ggplot2) #this loads the ggplot function which you have to do in each script
#The following code creates a scatter plot 
ggplot(data = lynx, aes(x=year, y=trapped))+ #this calls the ggplot function and then specifies the aethetics or x/y values
  geom_point()+ #denotes that it will be a scatter/point plot
  stat_smooth(method="lm") + #Trendline indicates there isn't a relationship between year and #of lynx trapped
  theme_classic() #this affects the "looks" of the plot

##Q2: Generate 2 figures that summarize data.txt. 
#######1) barplot of means of 4 populations
#######2) scatterplot of all observations

data=read.table(file="data.txt",header=TRUE,sep=",") #this loads the file
library(ggplot2) 

#The following code creates a barplot of the mean observation for each region
ggplot(data = data,aes(x = region, y= observations))+ #this line calls the ggplot function and defines the aethetics i.e. x and y
  stat_summary(fun=mean, geom="bar")+ #this indicates the type of plot. In this case a bar chart depicting the mean (summary statistic)
  theme_classic()

#The following code creates a scatter plot of all observations
ggplot(data = data,aes(x = region, y= observations))+
  geom_jitter()+
  theme_classic()

#The bar and scatter plots DO tell different stories
#The bar plot makes the regions look more similar 
#since it is only showing the average. However, the
#scatter plots show the distribution of the data which
#provides different/more information. We can see that 
#the north region is much more consistent than the east
#or west and the south region is potentially bimodal
#with 2 clusters. 