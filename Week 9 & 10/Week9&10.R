# Mithil Patel
# DSC 640 - Week 9 & 10 Assignment
# 02/08/2023


# Importing libraries
library(ggplot2)
library(mapview)

# Importing dataframes
ppg_df <- read.csv("ppg2008.csv")
costco_df <- read.csv("costcos-geocoded.csv")

## Creating Heat map
# Dropping categorical columns from ppg dataframe
heatmap_df <- ppg_df[!(names(ppg_df) %in% c("Name"))]

heatmap <- heatmap(as.matrix(heatmap_df), 
                   scale="column", main="Heatmap")

# Display heat map
heatmap

## Creating Spatial chart
spatial_chart <- mapview(costco_df, xcol = "Longitude", ycol = "Latitude", 
                         cex = 3,crs = 4269, grid = FALSE)

# Display spatial chart  
spatial_chart


# Creating Contour plot
contour_plot <- ggplot(heatmap_df, aes(x=MIN, y=PTS) ) +
  stat_density_2d(aes(fill = ..level..), geom = "polygon", colour="white") + 
  ggtitle("PTS vs MIN Contour plot")

# Display contour plot
contour_plot