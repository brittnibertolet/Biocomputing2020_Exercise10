# pt1: write a script that loads the file and produces a scatterplot
## of two variables with a trend line

# read in file
dogweights <- read.csv("~/Desktop/Bioinformatics/Biocomputing2020_Exercise10/dogweights.csv",
                 header=TRUE, stringsAsFactors = FALSE)

# create scatterplot
library(ggplot2)
ggplot(dogweights, aes(x=age, y=weight, color=breed))+
  geom_point()+
  stat_smooth()+
  theme_classic()

# create function

  