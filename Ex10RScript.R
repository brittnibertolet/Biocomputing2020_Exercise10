# pt1: write a script that loads the file and produces a scatterplot
## of two variables with a trend line

# read in file
dogweights <- read.csv("~/Desktop/Bioinformatics/Biocomputing2020_Exercise10/dogweights.csv",
                 header=TRUE, stringsAsFactors = FALSE)

# create scatterplot
library(ggplot2)
ggplot(dogweights, aes(x=age, y=weight, color=breed))+
  geom_point()+
  # add in trend line (one for both breeds, instead of one overall trend line)
  stat_smooth()+
  theme_classic()

# combine into a function
scatter <- function(i){
  file <- read.csv(i, header=TRUE, stringsAsFactors = FALSE)
  ggplot(file, aes(x=age, y=weight, color=breed))+
    geom_point()+
    stat_smooth()+
    theme_classic() 
}

# run the function
scatter("~/Desktop/Bioinformatics/Biocomputing2020_Exercise10/dogweights.csv")


# pt2: write a script that generates two figures to summarize data in data.txt
# generate a barplot of the means of the four populations
# generate a scatterplot of all the observations

# load data.txt
data <- read.csv("~/Desktop/Bioinformatics/Biocomputing2020_Exercise10/data.txt",
                 header=TRUE, stringsAsFactors = FALSE)

# generate barplot of means
ggplot(data, aes(x=region, y=observations))+
  stat_summary(fun.y=mean, geom="bar", width=0.5)+
  theme_classic()

# generate scatterplot of all obs
ggplot(data, aes(x=region, y=observations))+
  geom_jitter(size=0.1)+
  theme_classic()

# do the bar and scatter plots tell you different stories? why?
## the scatter plot shows more detail in the data, that the bar graph misses.
## for example, in the south region, the scatter plot shows that the observations 
## cluster around 25 and 5. the bar graph doesn't show this.

