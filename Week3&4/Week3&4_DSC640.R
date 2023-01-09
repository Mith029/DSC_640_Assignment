# Mithil Patel
# DSC 630 - Week 3 & 4 Assignment
# 1/08/2023

# Importing libraries
library(readxl)
library(ggplot2)

# Import world population dataset
world_df <- read_excel('world-population.xlsm')

# Plotting line chart
line_chart <- ggplot(data= world_df, aes(x= Year, y= Population)) +
  geom_line(color="red") + 
  ggtitle("World population from 1960-2009")

# displaying line chart
line_chart

# Plotting step function
step_chart <- ggplot(data= world_df, aes(x= Year, y= Population)) +
  geom_step(color = "Blue")  +
  ggtitle("World population from 1960-2009")

# displaying step function
step_chart

