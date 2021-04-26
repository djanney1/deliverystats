## Data and values for plotting

# filter data by day
Tuesday <- filter(deliveries1,Day_of_the_Week=="Tuesday")
Thursday <- filter(deliveries1,Day_of_the_Week=="Thursday")
Friday <- filter(deliveries1,Day_of_the_Week=="Friday")
Saturday <- filter(deliveries1,Day_of_the_Week=="Saturday")
Sunday <- filter(deliveries1,Day_of_the_Week=="Sunday")

# deliveries1 values
Tip <- deliveries1$Tip
Order_Total <- deliveries1$Order_Total
Payment <- deliveries1$Payment_Type
Subtotal <- deliveries1$Subtotal
Percentage <- deliveries1$Tip_Percentage
Days <- deliveries1$Day_of_the_Week
Date <- deliveries1$Date

# Tuesday values
Tues_Tip <- Tuesday$Tip
Tues_Order_Total <- Tuesday$Order_Total
Tues_Subtotal <- Tuesday$Subtotal
Tues_Percentage <- Tuesday$Tip_Percentage
Tues_Payment <- Tuesday$Payment_Type
Tues_Date <- Tuesday$Date

# Thursday values
Thurs_Tip <- Thursday$Tip
Thurs_Order_Total <- Thursday$Order_Total
Thurs_Subtotal <- Thursday$Subtotal
Thurs_Percentage <- Thursday$Tip_Percentage
Thurs_Payment <- Thursday$Payment_Type
Thurs_Date <- Thursday$Date

# Friday values
Fri_Tip <- Friday$Tip
Fri_Order_Total <- Friday$Order_Total
Fri_Subtotal <- Friday$Subtotal
Fri_Percentage <- Friday$Tip_Percentage
Fri_Payment <- Friday$Payment_Type
Fri_Date <- Friday$Date

# Saturday values
Sat_Tip <- Saturday$Tip
Sat_Order_Total <- Saturday$Order_Total
Sat_Subtotal <- Saturday$Subtotal
Sat_Percentage <- Saturday$Tip_Percentage
Sat_Payment <- Saturday$Payment_Type
Sat_Date <- Saturday$Date

# Sunday values
Sun_Tip <- Sunday$Tip
Sun_Order_Total <- Sunday$Order_Total
Sun_Subtotal <- Sunday$Subtotal
Sun_Percentage <- Sunday$Tip_Percentage
Sun_Payment <- Sunday$Payment_Type
Sun_Date <- Sunday$Date

# colors for Payment Type graphs
myColors <- c("deepskyblue3","gold3")
names(myColors) <- levels(deliveries1$Payment_Type)
colScale <- scale_colour_manual(name = "Payment Type",values = myColors)

# Graph modifications
DateLabels <- c('Mar 9','Mar 12','Mar 13','Mar 14','Mar 19','Mar 20','Mar 21','Mar 25','Mar 26','Mar 27','Mar 28','Mar 30','Apr 2','Apr 3')

# Tip Means
M_DateT <- Means(deliveries1,Date,Tip)
M_DayT <- Means(deliveries1,Day_of_the_Week,Tip)
M_PayT <- Means(deliveries1,Payment_Type,Tip)
M_DateP <- Means(deliveries1,Date,Tip_Percentage)
M_DayP <- Means(deliveries1,Day_of_the_Week,Tip_Percentage)
M_PayP <- Means(deliveries1,Payment_Type,Tip_Percentage)
