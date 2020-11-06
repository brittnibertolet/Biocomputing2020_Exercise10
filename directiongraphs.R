#imports data into r from txt file
direction_data<-read.table("data.txt",header=TRUE,sep = ",")

#creates barplot displaying the means for each population. 
#Offers a clear and concise summary of the mean data, letting the reader quickly know that east population has the highest mean value.
ggplot(direction_data,aes(region,observations))+geom_bar(stat="summary", fun="mean")+coord_cartesian(ylim=c(14.5,15.5))+ylab("mean observations")

#creates jitter plot displaying each individual data point for the user to see. 
#offers a more comprehensive summary of the data as the reader can now see the distribution of data points in each population
#Previously unknown, the reader can now see that east and west data is significantly more distributed than the other populations.
#additionally, the user can see that the souh population actually contains two sub-populations centered around 5 and 25, with the former being more concentrated in its distributed than the latter
#overall, the jitter plot seems to offer a better display of the data than the barplot for the reader actually focused on comparing differences between the populations
ggplot(direction_data,aes(region,observations))+geom_jitter(size=0.2)

