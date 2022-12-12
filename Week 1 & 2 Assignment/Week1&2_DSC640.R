# Mithil Patel
# DSC 630 - Week 1 & 2 Assignment
# 12/11/2022

# Importing libraries
library(readxl)
library(ggplot2)
library(dplyr)
library(reshape2) 
library(scales)

# Import obama dataset
obama_df <- read_excel('obama-approval-ratings.xls')

# Printing obama dataframe
View(obama_df)

# Creating bar chart
bar_plot <- ggplot(data=obama_df, aes(x= Issue, y= Approve, fill = Issue)) +
  geom_bar(stat="identity") + 
  theme(axis.text.x = element_text(angle = 65, vjust = 1, hjust=1))

# Displaying bar chart
bar_plot

# Import obama dataset
hotdog_df <- read_excel('hotdog-contest-winners.xlsm')

# Creating stacked chart
stacked_plot <- ggplot(data = hotdog_df, aes(x = Country, y = 'Dogs eaten', fill = Winner)) + 
  geom_bar(position = "stack", stat = "identity") + 
  ggtitle("Hotdog eaten by each country (Stacked chart)")

# Displaying stacked chart
stacked_plot

# Creating pie chart
pie_chart <- ggplot(hotdog_df, aes(x="", y= 'Dogs eaten', fill=Country)) +
  geom_bar(stat="identity", width=1) +
  ggtitle("Pie chart of hotdog eaten by each country") + 
  coord_polar("y")

# Displaying pie chart
pie_chart

# Alphabetically sort Country column
hotdog_df<- hotdog_df[order(hotdog_df$Country),]
View(hotdog_df)

# Adding columns to create empty circle for donut chart
hotdog_df$fraction = hotdog_df$`Dogs eaten` / sum(hotdog_df$`Dogs eaten`)
hotdog_df = hotdog_df[order(hotdog_df$fraction), ]
hotdog_df$ymax = cumsum(hotdog_df$fraction)
hotdog_df$ymin = c(0, head(hotdog_df$ymax, n=-1))

# creating donut chart
donut_chart <- ggplot(hotdog_df, aes(fill=Country,ymax=ymax, ymin=ymin, xmax=4, xmin=3)) +
  geom_rect() +
  ggtitle("Donut of hotdog eaten by each country") + 
  coord_polar("y") + xlim(c(0,4))

# Displaying donut chart
donut_chart

