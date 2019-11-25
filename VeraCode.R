
#Exercise 9

# select the work directory

setwd('/Users/claudiaveraarias/Documents/ND_Classes/Fall_Semester_2019/Biocomputing/R/W12_BC/Tutorial/')

  # select the package ggplot2 and cowplot

library(ggplot2)
library(cowplot)

# 1) Produce a scatter plot of those two variables that includes a trend line

  # read the file

MalHem2 <- read.csv("/Users/claudiaveraarias/Documents/ND_Classes/Fall_Semester_2019/Biocomputing/R/W12_BC/Tutorial/Ecuador-Malaria.csv")
  
  # scatter plot

ggplot(data = MalHem2, aes(x = Age, y = Hemoglobin)) + geom_point(size = 1) +
  geom_smooth(method = lm, linetype = "dashed", color = "darkblue", fill = "purple")

# 2) Write a script that generates two figutes that sumamrize the data. First, show a 
     # barplot of the mean of the four population. Second, show a scatter plot of all the 
     # observatiobns within a population in your scatter plot.

  # read the file 

data <- read.csv("/Users/claudiaveraarias/Documents/ND_Classes/Fall_Semester_2019/Biocomputing/R/W12_BC/Tutorial/IBC_Exercise_09-master/data.txt", header = TRUE)

  # A) barplot of the mean of the four population

north <- data[data$region == "north",]
north_mean <- mean(north$observations)
east <- data[data$region == "east",]
east_mean <- mean(east$observations)
south <- data[data$region == "south",]
south_mean <- mean(south$observations)
west <- data[data$region == "west",]
west_mean <- mean(west$observations)

Data_mean <- data.frame(Region=c("North", "East", "South", "West"),
  Mean=c(north_mean, east_mean, south_mean, west_mean))

a <- ggplot(data = Data_mean, aes(x=Region, y=Mean, fill=Region)) +
  geom_bar(stat="identity") +
  geom_text(aes(label=Mean), vjust=-0.3, size=2.6) +
  theme_minimal() 

  # B) Scatter plot of all the observatiobns

b <- ggplot(data = data, aes(y = observations, x=region)) + 
  geom_jitter(aes(colour = region), size=0.2)

  # Graphs A and B together

plot_grid(a, b, labels = c("A", "B"), label_size = 10)

 # Do the bar and scatter plots tell you diffetent stories? Why?
    # Yes, they do becuase the bar plot just show each population mean observations 
    # number. However, this number do not show the real observation distribution that
    # scatter plot shows. It (scatter plot) helps us to see that east and west population
    # have a more heterogenius distribution, on the other hand, north population shows
    # a highly homogenous population and north population has two groups.
