# Begin deliverystats package

# Load packages necessary for future functions
library(plyr)
library(dplyr)
library(tidyverse)
library(ggplot2)
library(rlang)

# Load data set
deliveries <- read.csv("deliveries.csv")

# create table of Payment Types
Payment_Counts <- table(deliveries$Payment_Type)
# bar graph of payment counts
barplot(Payment_Counts, main="Frequency of Payment Types",
        xlab="Payment Types", col=c("lightblue","green","gold"))

# The low frequency of Cash types and NA Tip values prompts the action to
# remove said rows to further analysis of data

## Create deliveries1 for data modifications
# Remove Cash values and NA values
deliveries1 <- deliveries[!deliveries$Payment_Type == "Cash" & !deliveries$Tip == "NA", ]
deliveries1 <- na.omit(deliveries1)
## Create Subtotal column
# Note: the Subtotal is not entirely accurate, tax is withdrawn
# but delivery fees vary per order and not considered here
deliveries1 <- deliveries1 %>% mutate(Subtotal = Order_Total-Tip-(Order_Total*.07))
## Create Tip_Percentage column
deliveries1 <- deliveries1 %>% mutate(Tip_Percentage=(Tip/Subtotal)*100)
# Reorder columns in data set
deliveries1 <- deliveries1[, c(1,2,6,4,3,7,5)]
# Renumber the rows
row.names(deliveries1) <-1:nrow(deliveries1)
# Write deliveries1 csv
write.csv(deliveries1,'deliveries1.csv')

# continue to deliverystats.R
