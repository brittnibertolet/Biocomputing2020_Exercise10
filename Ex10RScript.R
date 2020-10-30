# pt1: write a script that loads the file and produces a scatterplot
## of two variables with a trend line

# read in file
lutz <- read.csv("~/Desktop/Bioinformatics/Biocomputing2020_Exercise10/lutz.csv",
                 header=TRUE, stringsAsFactors = FALSE)

# create scatterplot
library(ggplot2)
ggplot(lutz, aes(x=Ct, y=Tm))+
  geom_jitter()+
  theme_classic()
