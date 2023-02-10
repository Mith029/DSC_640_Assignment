# Mithil Patel
# DSC 640 - Week 7 & 8 Assignment
# 02/08/2023

# Importing libraries
library(ggplot2)
library(hrbrthemes)
library(viridis)

# Import crime dataframe
crime_df <- read.csv("crimerates-by-state-2005.csv")

# Creating scatter plot
scatter_plot <- ggplot(crime_df, aes(x= burglary, y= robbery, color= "Red")) + 
  geom_point() + ggtitle("R: Scatter plot") + theme_ipsum()

# Display scatter plot
scatter_plot


# Creating bubble chart
bubble_chart <- ggplot(crime_df, aes(x= burglary, y= larceny_theft, size = population, 
                     color = state)) + geom_point(alpha = 0.7) + 
  ggtitle('R: Bubble chart') + 
  scale_size(range = c(1.4, 19)) +
  scale_color_viridis(discrete=TRUE, guide=FALSE) +
  theme_ipsum() +
  theme(legend.position="none")


# Display bubble chart
bubble_chart

# Creating Density plot chart
density_plot <- ggplot(crime_df, aes(x=larceny_theft)) + 
  geom_density(fill="Green", color="Green", alpha=0.8) +
  ggtitle('R: Density plot chart') + theme_ipsum()

# Display Density plot chart
density_plot

