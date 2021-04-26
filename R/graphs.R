## Scatter plots

# Order Total and Tip (Payment Type points)
TTP <- TotalTipPlot(deliveries1,Order_Total,Tip,Payment,"Order Totals and Tips")
TuesTTP <- TotalTipPlot(Tuesday,Tues_Order_Total,Tues_Tip,Tues_Payment,"Tuesday Order Totals and Tips")
ThursTTP <- TotalTipPlot(Thursday,Thurs_Order_Total,Thurs_Tip,Thurs_Payment,"Thursday Order Totals and Tips")
FriTTP <- TotalTipPlot(Friday,Fri_Order_Total,Fri_Tip,Fri_Payment,"Friday Order Totals and Tips")
SatTTP <- TotalTipPlot(Saturday,Sat_Order_Total,Sat_Tip,Sat_Payment,"Saturday Order Totals and Tips")
SunTTP <- TotalTipPlot(Sunday,Sun_Order_Total,Sun_Tip,Sun_Payment,"Sunday Order Totals and Tips")
# Subtotal and Tip (Payment Type points)
STP <- SubTipPlot(deliveries1,Subtotal,Tip,Payment,"Subtotals and Tips")
TuesSTP <- SubTipPlot(Tuesday,Tues_Subtotal,Tues_Tip,Tues_Payment,"Tuesday Subtotals and Tips")
ThursSTP <- SubTipPlot(Thursday,Thurs_Subtotal,Thurs_Tip,Thurs_Payment,"Thursday Subtotals and Tips")
FriSTP <- SubTipPlot(Friday,Fri_Subtotal,Fri_Tip,Fri_Payment,"Friday Subtotals and Tips")
SatSTP <- SubTipPlot(Saturday,Sat_Subtotal,Sat_Tip,Sat_Payment,"Saturday Subtotals and Tips")
SunSTP <- SubTipPlot(Sunday,Sun_Subtotal,Sun_Tip,Sun_Payment,"Sunday Subtotals and Tips")
# Order Total and Tip Percentage (Payment Type points)
TPP <- TotalPerPlot(deliveries1,Order_Total,Percentage,Payment,"Order Totals and Tip Percentage")
TuesTPP <- TotalPerPlot(Tuesday,Tues_Order_Total,Tues_Percentage,Tues_Payment,"Tuesday Order Totals and Tip Percentage")
ThursTPP <- TotalPerPlot(Thursday,Thurs_Order_Total,Thurs_Percentage,Thurs_Payment,"Thursday Order Totals and Tip Percentage")
FriTPP <- TotalPerPlot(Friday,Fri_Order_Total,Fri_Percentage,Fri_Payment,"Friday Order Totals and Tip Percentage")
SatTPP <- TotalPerPlot(Saturday,Sat_Order_Total,Sat_Percentage,Sat_Payment,"Saturday Order Totals and Tip Percentage")
SunTPP <- TotalPerPlot(Sunday,Sun_Order_Total,Sun_Percentage,Sun_Payment,"Sunday Order Totals and Tip Percentage")
# Subtotal and Tip Percentage (Payment Type points)
SPP <- SubPerPlot(deliveries1,Subtotal,Percentage,Payment,"Subtotals and Tip Percentage")
TuesSPP <- SubPerPlot(Tuesday,Tues_Subtotal,Tues_Percentage,Tues_Payment,"Tuesday Subtotals and Tip Percentage")
ThursSPP <- SubPerPlot(Thursday,Thurs_Subtotal,Thurs_Percentage,Thurs_Payment,"Thursday Subtotals and Tip Percentage")
FriSPP <- SubPerPlot(Friday,Fri_Subtotal,Fri_Percentage,Fri_Payment,"Friday Subtotals and Tip Percentage")
SatSPP <- SubPerPlot(Saturday,Sat_Subtotal,Sat_Percentage,Sat_Payment,"Saturday Subtotals and Tip Percentage")
SunSPP <- SubPerPlot(Sunday,Sun_Subtotal,Sun_Percentage,Sun_Payment,"Sunday Subtotals and Tip Percentage")

# Order Totals and Tips with Day of the Week legend
TTDayP <- ggplot(deliveries1,aes(Order_Total,Tip)) +
  geom_point(aes(colour=Day_of_the_Week)) +
  scale_x_continuous(name="Order Total (in dollars)",breaks=seq(0,130,10),limits=c(0,130)) +
  scale_y_continuous(name="Tip (in dollars)",breaks=c(0,5,10,15,20),limits=c(0,20)) +
  ggtitle("Order Totals and Tips") +
  scale_colour_discrete(name="Day")

# Order Totals and Tips with Date legend
TTDateP <- ggplot(deliveries1,aes(Order_Total,Tip,colour=Date)) +
  geom_point() +
  scale_x_continuous(name="Order Total (in dollars)",breaks=seq(0,130,10),limits=c(0,130)) +
  scale_y_continuous(name="Tip (in dollars)",breaks=c(0,5,10,15,20),limits=c(0,20)) +
  ggtitle("Order Totals and Tips") +
  scale_colour_discrete(label=DateLabels) +
  theme(legend.key.size = unit(.3, 'cm'),legend.title = element_text(size = 9),legend.text = element_text(size = 8))


## Box Plots
# Day and Tip
DayTipBox <- ggplot(deliveries1, aes(Day_of_the_Week,Tip,fill=Day_of_the_Week)) +
  geom_boxplot(show.legend=FALSE,varwidth = TRUE) +
  labs(title="Summary of Tips by Day") +
  scale_y_continuous(name="Tip (in dollars)",breaks=c(0,5,10,15,20),limits=c(0,20)) +
  scale_x_discrete(name="Day of the Week")
# Day and Tip Percentage
DayPerBox <- ggplot(deliveries1, aes(Day_of_the_Week,Tip_Percentage,fill=Day_of_the_Week)) +
  geom_boxplot(show.legend=FALSE,varwidth = TRUE) +
  labs(title="Percentage Summary of Tips by Day") +
  scale_y_continuous(name="Tip Percentage",breaks=c(0,10,20,30),limits=c(0,30)) +
  scale_x_discrete(name="Day of the Week")
# Date and Tip
DateTipBox <- ggplot(deliveries1, aes(Date,Tip,fill=Date)) +
  geom_boxplot(show.legend=FALSE,varwidth = TRUE) +
  labs(title="Summary of Tips by Date") +
  scale_y_continuous(name="Tip (in dollars)",breaks=c(0,5,10,15,20),limits=c(0,20)) +
  scale_x_discrete(name="Date",labels=DateLabels)
# Date and Tip Percentage
DatePerBox <- ggplot(deliveries1, aes(Date,Tip_Percentage,fill=Date)) +
  geom_boxplot(show.legend = FALSE,varwidth = TRUE) +
  labs(title="Percentage Summary of Tips by Date") +
  scale_y_continuous(name="Tip Percentage",breaks=c(0,10,20,30),limits=c(0,30)) +
  scale_x_discrete(name="Date",labels=DateLabels)
#Payment Type and Tip
PayTBox <- ggplot(deliveries1, aes(Payment_Type,Tip,fill=Payment_Type)) +
  geom_boxplot(show.legend = FALSE,varwidth = TRUE) +
  scale_fill_manual(values=myColors) +
  labs(title="Summary of Tips by Payment Type") +
  scale_x_discrete(name="Payment Type") +
  scale_y_continuous(name="Tip (in dollars)",breaks=c(0,5,10,15,20),limits=c(0,20))

## Bar Plots
# Tip Means by Payment Type
PayMTBar <- ggplot(M_PayT,aes(Payment_Type,Mean,fill=Payment_Type)) +
  geom_bar(stat="identity",show.legend = FALSE) +
  scale_fill_manual(values=myColors) +
  labs(title="Tip Means by Payment Type") +
  scale_x_discrete(name="Payment Type") +
  scale_y_continuous(name="Tip Mean",breaks=c(0,2,4,6,8,10),limits = c(0,10))
# Tip Means by Day
TMDayBar <- ggplot(M_DayT,aes(reorder(Day_of_the_Week,-Mean),Mean)) +
  geom_bar(stat="identity",aes(fill=Day_of_the_Week),show.legend = FALSE) +
  labs(title="Tip Means by Day") +
  scale_x_discrete(name="Day") +
  scale_y_continuous(name="Tip Mean",breaks=c(0,2,4,6,8,10),limits = c(0,10))
# Tip Means by Date
TMDateBar <- ggplot(M_DateT, aes(reorder(Date,-Mean),Mean)) +
  geom_bar(stat="identity", aes(fill=Date), show.legend = FALSE) +
  labs(title="Tip Means by Date") +
  scale_x_discrete(name="Date",labels=DateLabels) +
  scale_y_continuous(name="Tip Mean",breaks=c(0,2,4,6,8,10,12),limits = c(0,12))

## Density Plots
# Tip and Payment Type
PayTDen <- ggplot(deliveries1,aes(Tip,fill=Payment_Type)) +
  geom_density(alpha=.5) +
  scale_fill_manual(name="Payment Type",values=myColors) +
  labs(title="Density of Tips by Payment Type") +
  scale_x_continuous(limits=c(0,25))
# Tip and Day
DayTDen <- ggplot(deliveries1,aes(Tip,fill=Day_of_the_Week)) +
  geom_density(alpha=.4) +
  labs(title="Density of Tips by Day") +
  scale_x_continuous(limits=c(0,25)) +
  scale_fill_discrete(name="Day")
# Tip and Date
DateTDen <- ggplot(deliveries1,aes(Tip,fill=Date)) +
  geom_density(alpha=.5) +
  labs(title="Density of Tips by Date") +
  scale_x_continuous(limits=c(0,25)) +
  scale_fill_discrete(name="Date",label=DateLabels) +
  theme(legend.key.size = unit(.3, 'cm'),legend.title = element_text(size = 9),legend.text = element_text(size = 8))
