
#Exercise 9

# 1) Produce a scatter plot of those two variables that includes a trend line

  # select the work directory

setwd('/Users/claudiaveraarias/Documents/ND_Classes/Fall_Semester_2019/Biocomputing/R/W12_BC/Tutorial/')

  # select the package ggplot2

library(ggplot2)

  # read the file

W_H <- read.table("/Users/claudiaveraarias/Documents/ND_Classes/Fall_Semester_2019/Biocomputing/R/W12_BC/Tutorial/WeightvsHeight.txt")

  # scatter plot

