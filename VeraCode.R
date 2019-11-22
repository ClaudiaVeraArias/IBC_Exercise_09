
#Exercise 9

# 1) Produce a scatter plot of those two variables that includes a trend line

  # select the work directory

setwd('/Users/claudiaveraarias/Documents/ND_Classes/Fall_Semester_2019/Biocomputing/R/W12_BC/Tutorial/')

  # select the package ggplot2

library(ggplot2)

  # read the file

MalHem2 <- read.csv("/Users/claudiaveraarias/Documents/ND_Classes/Fall_Semester_2019/Biocomputing/R/W12_BC/Tutorial/Ecuador-Malaria.csv")
  
  # scatter plot

ggplot(data = MalHem2, aes(x = Age, y = Hemoglobin)) + geom_point(size = 1) +
  geom_smooth(method = lm, linetype = "dashed", color = "darkblue", fill = "purple")
