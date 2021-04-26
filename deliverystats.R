# This R file is more like a blog post, I guess. I had a desire to see
# specific relationships of my data and this is the shorthand process.

# Necessary packages
library(readr)
library(plyr)
library(dplyr)
library(tidyverse)
library(ggplot2)
library(rlang)
library(ggpubr)

# Load original .csv
deliveries <- read_csv("data/deliveries.csv")

# Create table of Payment Types
Payment_Counts <- table(deliveries$Payment_Type)
# Bar graph of payment counts
barplot(Payment_Counts, main="Frequency of Payment Types",
        xlab="Payment Types", col=c("lightblue","green","gold"))

# The low frequency of Cash types and NA Tip values prompts the action to
# remove said rows to further analysis of data
# See the mutation in R/creating_deliveries1.R

# Load deliveries1.csv
read_csv("data/deliveries1.csv")

# Load .R files
source("R/creating_deliveries1.R")
source("R/functions.R")
source("R/values.R")
source("R/graphs.R")

### The moment I have been waiting for:
## Plot Arrangements
# Order Total and Tip scatters for deliveries1 and Days
ggarrange(TTP,TuesTTP,ThursTTP,FriTTP,SatTTP,SunTTP,ncol=2,nrow=3,common.legend = TRUE)

# Order Total Tips by Payment Types
ggarrange(TTP,PayMTBar,PayTBox,PayTDen,ncol=2,nrow=2)

# Day of the Week plots
ggarrange(TTDayP,TMDayBar,DayTipBox,DayTDen,ncol=2,nrow=2)

# Date plots
ggarrange(TTDateP,TMDateBar,DateTipBox,DateTDen,ncol=2,nrow=2)

## Looking at a DATE and wondering what DAY of the week it is?
## Use WhatDay(), enter a date like: WhatDay("03_09_21")
