# Mithil Patel
# DSC 640 - Week 5 & 6 Assignment
# 01/22/2023

# Importing libraries
library(treemap)
library(ggplot2)

# Importing dataframe
employment_df <- read.csv("unemployement-rate-1948-2010.csv")
View(employment_df)

# Constructing tree map
tree_map <- treemap(employment_df, index = "Period", vSize = "Value", type="index")

# Display tree map
tree_map

# Constructing area chart
area_chart <- ggplot(employment_df, aes(x=Year, y=Value)) + 
  geom_area(fill="#69b3a2") + ggtitle("R: Area chart")

# Display area chart
area_chart

# Creating stacked area chart
stack_chart <- ggplot(employment_df, aes(x=Year, y=Value, fill= Period)) + 
  geom_area() + ggtitle("R: Stacked area chart")

# Display stacked area chart
stack_chart

