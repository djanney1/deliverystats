### Graphical Functions

## Scatter Plot Functions

#' Order Total vs Tip Scatterplot (Payment Type points)
#'
#' This function returns a ggplot point graph
#' @param data Data set
#' @param x Order Total column of data set
#' @param y Tip column of data set
#' @param z Payment Type column of data set
#' @param title Title of the graph
#' @examples
#' TotalTipPlot(deliveries1,Order_Total,Tip,Payment,"Order Totals and Tips")
#' @export
TotalTipPlot <- function(data,x,y,z,title) {
  ggplot2::ggplot(data, aes({{ x }},{{ y }})) +
    geom_point(aes(colour=z)) +
    scale_x_continuous(name="Order Total (in dollars)",breaks=seq(0,130,10),limits=c(0,130)) +
    scale_y_continuous(name="Tip (in dollars)",breaks=c(0,5,10,15,20),limits=c(0,20)) +
    ggtitle(title) +
    scale_colour_manual(name = "Payment Type",values = myColors)
}

#' Subtotal vs Tip Scatterplot (Payment Type points)
#'
#' This function returns a ggplot point graph
#' @param data Data set
#' @param x Subtotal column of data set
#' @param y Tip column of data set
#' @param z Payment Type column of data set
#' @param title Title of the graph
#' @examples
#' SubTipPlot(Tuesday,Tues_Subtotal,Tues_Tip,Tues_Payment,"Tuesday Subtotals and Tips")
#' @export
SubTipPlot <- function(data,x,y,z,title) {
  ggplot2::ggplot(data, aes({{ x }},{{ y }})) +
    geom_point(aes(colour=z)) +
    scale_x_continuous(name="Subtotal (in dollars)",breaks=seq(0,110,10),limits=c(0,110)) +
    scale_y_continuous(name="Tip (in dollars)",breaks=c(0,5,10,15,20),limits=c(0,20)) +
    ggtitle(title) +
    scale_colour_manual(name = "Payment Type",values = myColors)
}

#' Order Total vs Tip Percentage Scatterplot (Payment Type points)
#'
#' This function returns a ggplot point graph
#' @param data Data set
#' @param x Order Total column of data set
#' @param y Tip Percentage column of data set
#' @param z Payment Type column of data set
#' @param title Title of the graph
#' @examples
#' TotalPerPlot(Friday,Fri_Order_Total,Fri_Percentage,Fri_Payment,"Friday Order Totals and Tip Percentage")
#' @export
TotalPerPlot <- function(data,x,y,z,title) {
  ggplot2::ggplot(data, aes({{ x }},{{ y }})) +
    geom_point(aes(colour=z)) +
    scale_x_continuous(name="Order Total (in dollars)",breaks=seq(0,130,10),limits=c(0,130)) +
    scale_y_continuous(name="Tip Percentage",breaks=seq(0,50,10),limits=c(0,50)) +
    ggtitle(title) +
    scale_colour_manual(name = "Payment Type",values = myColors)
}

#' Subtotal vs Tip Percentage Scatterplot (Payment Type points)
#'
#' This function returns a ggplot point graph
#' @param data Data set
#' @param x Subtotal column of data set
#' @param y Tip Percentage column of data set
#' @param z Payment Type column of data set
#' @param title Title of the graph
#' @examples
#' SubPerPlot(Sunday,Sun_Subtotal,Sun_Percentage,Sun_Payment,"Sunday Subtotals and Tip Percentage")
#' @export
SubPerPlot <- function(data,x,y,z,title) {
  ggplot2::ggplot(data, aes({{ x }},{{ y }})) +
    geom_point(aes(colour=z)) +
    scale_x_continuous(name="Subtotal (in dollars)",breaks=seq(0,110,10),limits=c(0,110)) +
    scale_y_continuous(name="Tip Percentage",breaks=seq(0,50,10),limits=c(0,50)) +
    ggtitle(title) +
    scale_colour_manual(name = "Payment Type",values = myColors)
}

## Calculation functions

#' Means of Things
#'
#' Returns means of numeric columns by character groups
#' @param data Data set
#' @param x Character column
#' @param y Numeric column
#' @examples
#' Means(deliveries1,Date,Tip)
#' @export
Means <- function(data,x,y) {
  data %>% group_by({{x}}) %>% summarize(Mean=mean({{y}}))
}

#' Sums of Things
#'
#' Sums of numeric columns by character groups
#' @param data Data set
#' @param x Character column
#' @param y Numeric column
#' @examples
#' Sums(Friday,Date,Tip)
#' @export
Sums <- function(data,x,y) {
  data %>% group_by({{x}}) %>% summarize(Sum=sum({{y}}))
}

#' What Day Is It?
#'
#' Function to return the Day of the week for a Date
#' @param x Date within the data
#' @examples
#' WhatDay("03_09_21")
#' @export
WhatDay <- function(x) {
  unique(subset(deliveries1, Date == x, select = Day_of_the_Week))
}
