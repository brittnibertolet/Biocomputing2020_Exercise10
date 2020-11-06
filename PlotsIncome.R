#reads average meidan housld income data per year and displays it onto a plot with a trend line
data <- read.csv("income.csv")

#creates a scatter plot with a trend line. The data seems highly correlative.
ggplot(data, aes(x = Year, y = Median.houselhold.income))+ylab("Income (U.S $)")+geom_point(color='blue')+geom_smooth(method = "lm", se = FALSE)
