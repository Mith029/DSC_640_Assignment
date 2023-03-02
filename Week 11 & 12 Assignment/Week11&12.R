# Mithil Patel
# DSC 640 - Week 11 & 12 Assignment
# 03/02/2023


# Importing libraries
library(ggplot2)
library(hrbrthemes)

# Importing crime dataframe
crime_df <- read.csv("crimeratesbystate-formatted.csv")

# Creating Histogram
histogram <- ggplot(crime_df, aes(x=burglary)) +
  geom_histogram(fill="Blue", color="red") +
  ggtitle("R: Histogram") +
  theme_ipsum() +
  theme(
    plot.title = element_text(size=15)
  )

# Plotting histogram
histogram


# Creating box plot
box_plot <- ggplot(crime_df, aes(x=burglary)) + 
  geom_boxplot(fill="slateblue", alpha=0.2) + ggtitle("R: Box plot") +
  theme_ipsum() +
  theme(plot.title = element_text(size=15))

# Plotting box plot
box_plot


# Creating bullet chart
bullet_chart <- ggplot(crime_df, aes(x = robbery, y = state)) +
  geom_col(aes(x = 100), fill = "grey", width = 0.5) +
  geom_col(aes(x = robbery), fill = "blue", width = 0.5) + 
  geom_col(aes(x = forcible_rape),fill = "red",color = NA,width = 0.25) +
  coord_cartesian(ylim = c(0, 20)) + ggtitle("R: Bullet chart")
theme_minimal() + theme(panel.grid.major.y = element_blank())

# plotting bullet chart
bullet_chart


# Creating lollipop plot
lollipop_plot <- ggplot(crime_df, aes(x=state, y=robbery)) +
  geom_segment( aes(x=state, xend=state, y=0, yend=robbery), color="skyblue") +
  geom_point( color="blue", size=4, alpha=0.6) + ggtitle("R: Lollipop plot") +
  theme_light() +
  coord_flip() +
  theme(
    panel.grid.major.y = element_blank(),
    panel.border = element_blank(),
    axis.ticks.y = element_blank()
  )
  
# Plotting lollipop plot
lollipop_plot

