#Exercise 10      Matthew Licursi

#Question 1

#I collected data on sports car engine displacement (cc) and top speeds (mph) to see the relationship between
#these two variables. The data is in a text file called "CarData.txt"

#Load package for use
library(ggplot2)

#Read in Data
CarData<-read.table("CarData.txt", header = TRUE, sep = "\t", stringsAsFactors = FALSE)
dim(CarData) #Checks the dimensions of the data

#Create plot of engine displacement (cc) vs. top speed (mph)
ggplot(data = CarData, 
       aes(x = Displacement, y = Speed)) +
  geom_point() +
  stat_smooth(method = "lm") +
  xlab("Displacement (cc)") +
  ylab("Top Speed (mph)") +
  theme_classic()

#Question 2

#Script generates two figures that summarize the data: a barplot with the means of the four populations, and a
#scatterplot of all of the observations in the file "data.txt"

#Read in "data.txt"
Data<-read.table("data.txt", header = TRUE, sep = ",", stringsAsFactors = FALSE)
dim(Data)
unique(Data[,1]) #Prints the unique four regions in the dataset

#Create a bar plot of the means from the four regions
ggplot(data = Data, aes(x = region, y = observations)) +
  stat_summary(fun.y = mean, geom = "bar", color = "orange") +
  theme_classic()

#Create a scatterplot of all observations
ggplot(data = Data, aes(x = region, y = observations, color = region)) +
  xlab("Region") +
  ylab("Number of Observations") +
  geom_jitter()

#The bar plot shows us the average number of observations in each region, and they are all about the same according to
#the bar plot. In contrast, the scatterplot shows the distribution of these observations, as some regions like "north"
#have most concentrated around 15, while other places like "west" have variability stretching from 0 to 30.