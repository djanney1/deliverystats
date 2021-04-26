### Graphical Functions

## Scatter Plot Functions

# Order Total vs Tip (Payment Type points)
TotalTipPlot <- function(data,x,y,z,title) {
  ggplot2::ggplot(data, aes({{ x }},{{ y }})) +
    geom_point(aes(colour=z)) +
    scale_x_continuous(name="Order Total (in dollars)",breaks=seq(0,130,10),limits=c(0,130)) +
    scale_y_continuous(name="Tip (in dollars)",breaks=c(0,5,10,15,20),limits=c(0,20)) +
    ggtitle(title) +
    colScale
}
# Example:
# TotalTipPlot(deliveries1,Order_Total,Tip,Payment,"Order Totals and Tips")

# Subtotal vs Tip (Payment Type points)
SubTipPlot <- function(data,x,y,z,title) {
  ggplot2::ggplot(data, aes({{ x }},{{ y }})) +
    geom_point(aes(colour=z)) +
    scale_x_continuous(name="Subtotal (in dollars)",breaks=seq(0,110,10),limits=c(0,110)) +
    scale_y_continuous(name="Tip (in dollars)",breaks=c(0,5,10,15,20),limits=c(0,20)) +
    ggtitle(title) +
    colScale
}
# Example:
# SubTipPlot(Tuesday,Tues_Subtotal,Tues_Tip,Tues_Payment,"Tuesday Subtotals and Tips")

# Order Total vs Tip Percentage (Payment Type points)
TotalPerPlot <- function(data,x,y,z,title) {
  ggplot2::ggplot(data, aes({{ x }},{{ y }})) +
    geom_point(aes(colour=z)) +
    scale_x_continuous(name="Order Total (in dollars)",breaks=seq(0,130,10),limits=c(0,130)) +
    scale_y_continuous(name="Tip Percentage",breaks=seq(0,50,10),limits=c(0,50)) +
    ggtitle(title) +
    colScale
}
# Example:
# TotalPerPlot(Friday,Fri_Order_Total,Fri_Percentage,Fri_Payment,"Friday Order Totals and Tip Percentage")

# Subtotal vs Tip Percentage (Payment Type points)
SubPerPlot <- function(data,x,y,z,title) {
  ggplot2::ggplot(data, aes({{ x }},{{ y }})) +
    geom_point(aes(colour=z)) +
    scale_x_continuous(name="Subtotal (in dollars)",breaks=seq(0,110,10),limits=c(0,110)) +
    scale_y_continuous(name="Tip Percentage",breaks=seq(0,50,10),limits=c(0,50)) +
    ggtitle(title) +
    colScale
}
# Example:
# SubPerPlot(Sunday,Sun_Subtotal,Sun_Percentage,Sun_Payment,"Sunday Subtotals and Tip Percentage")


## Calculation functions

# Means of numeric columns by character groups
Means <- function(data,x,y) {
  data %>% group_by({{x}}) %>% summarize(Mean=mean({{y}}))
}
# Example:
# Means(deliveries1,Date,Tip)

# Sums of numeric columns by character groups
Sums <- function(data,x,y) {
  data %>% group_by({{x}}) %>% summarize(Sum=sum({{y}}))
}
#Example:
# Sums(Friday,Date,Tip)

# Function to return the Day of the week for a Date
WhatDay <- function(x) {
  unique(subset(deliveries1, Date == x, select = Day_of_the_Week))
}
# Example:
# WhatDay("03_09_21")
