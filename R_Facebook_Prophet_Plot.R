op <- par(mfrow = c(2,2), oma = c(3,2,2,0))
#Yearly = TRUE, Weekly = FALSE
predicted_values_yearly_daily <- read.csv(file = "/Users/bhanugarg/covid-project/Predicted_values_yearly_daily.csv")
actual_value_yearly_daily <- read.csv(file = "/Users/bhanugarg/covid-project/Actual_Values_yearly_daily.csv")
is.data.frame(predicted_values_yearly_daily)
is.data.frame(actual_value_yearly_daily)
y_1 <- actual_value_yearly_daily$total_cases
y_1_min <- min(y_1)
y_1_max <- max(y_1)
x_1 <- as.Date(actual_value_yearly_daily$date)
x_1_min <- min(x_1)
x_1_max <- max(x_1)
x_2 <- as.Date(predicted_values_yearly_daily$ds)
y_2 <- predicted_values_yearly_daily$yhat
y_3 <- predicted_values_yearly_daily$yhat_lower
y_4 <- predicted_values_yearly_daily$yhat_upper
y_4_max <- max(y_4)
y_max_1 <- max(y_1_max,y_4_max)
plot(x_1,y_1, ylim = c(y_1_min, y_max_1), xlim = c(x_1_min, x_1_max),type = "l", col = "red", xlab = "", ylab = "")
lines(x_2, y_2, type = "l", col = "blue")
lines(x_2,y_3, type = "l", col = "green")
lines(x_2,y_4, type = "l", col = "green")
mtext("a)", side = 2, line = 2, cex = 1, las = 2, padj = -11)
acc_yearly_daily <- (1 - mean(abs(y_2 - predicted_values_yearly_daily$y)/(predicted_values_yearly_daily$y)))*100

#Yearly = FALSE, Weekly = FALSE
predicted_values_daily <- read.csv(file = "/Users/bhanugarg/covid-project/Predicted_values_daily.csv")
actual_value_daily <- read.csv(file = "/Users/bhanugarg/covid-project/Actual_Values_daily.csv")
is.data.frame(predicted_values_daily)
is.data.frame(actual_value_daily)
y_5 <- actual_value_daily$total_cases
y_5_min <- min(y_5)
y_5_max <- max(y_5)
x_5 <- as.Date(actual_value_daily$date)
x_5_min <- min(x_5)
x_5_max <- max(x_5)
x_6 <- as.Date(predicted_values_daily$ds)
y_6 <- predicted_values_daily$yhat
y_7 <- predicted_values_daily$yhat_lower
y_8 <- predicted_values_daily$yhat_upper
y_8_max <- max(y_8)
y_max_2 <- max(y_1_max,y_8_max)
plot(x_5,y_5, ylim = c(y_5_min, y_max_2), xlim = c(x_5_min,x_5_max), type = "l", col = "red", xlab = "", ylab = "")
lines(x_6, y_6, type = "l", col = "blue")
lines(x_6,y_7, type = "l", col = "green")
lines(x_6,y_8, type = "l", col = "green")
mtext("b)", side = 2, line = 2, cex = 1, las = 2, padj = -11)

acc_daily <- (1 - mean(abs(y_6 - predicted_values_daily$y)/(predicted_values_daily$y)))*100

#Yearly = FALSE, Weekly = TRUE 
predicted_values_weekly_daily <- read.csv(file = "/Users/bhanugarg/covid-project/Predicted_values_weekly_daily.csv")
actual_value_weekly_daily <- read.csv(file = "/Users/bhanugarg/covid-project/Actual_Values_weekly_daily.csv")
is.data.frame(predicted_values_weekly_daily)
is.data.frame(actual_value_weekly_daily)
y_9 <- actual_value_weekly_daily$total_cases
y_9_min <- min(y_9)
y_9_max <- max(y_9)
x_9 <- as.Date(actual_value_weekly_daily$date)
x_9_min <- min(x_9)
x_9_max <- max(x_9)
x_10 <- as.Date(predicted_values_weekly_daily$ds)
y_10 <- predicted_values_weekly_daily$yhat
y_11 <- predicted_values_weekly_daily$yhat_lower
y_12 <- predicted_values_weekly_daily$yhat_upper
y_12_max <- max(y_12)
y_max_3 <- max(y_12_max,y_9_max)
plot(x_9,y_9, ylim = c(y_9_min, y_max_3),  xlim = c(x_9_min,x_9_max), type = "l", col = "red", xlab = "", ylab = "")
lines(x_10, y_10, type = "l", col = "blue")
lines(x_10,y_11, type = "l", col = "green")
lines(x_10,y_12, type = "l", col = "green")
mtext("c)", side = 2, line = 2, cex = 1, las = 2, padj = -11)

acc_weekly_daily <- (1 - mean(abs(y_10 - predicted_values_weekly_daily$y)/(predicted_values_weekly_daily$y)))*100

#Yearly = TRUE, Weekly = TRUE
predicted_values_yearly_weekly_daily <- read.csv(file = "/Users/bhanugarg/covid-project/Predicted_values_yearly_weekly_daily.csv")
actual_value_yearly_weekly_daily <- read.csv(file = "/Users/bhanugarg/covid-project/Actual_Values_yearly_weekly_daily.csv")
is.data.frame(predicted_values_yearly_weekly_daily)
is.data.frame(actual_value_yearly_weekly_daily)
y_13 <- actual_value_yearly_weekly_daily$total_cases
y_13_min <- min(y_13)
y_13_max <- max(y_13)
x_13 <- as.Date(actual_value_yearly_weekly_daily$date)
x_13_min <- min(x_13)
x_13_max <- max(x_13)
x_14 <- as.Date(predicted_values_yearly_weekly_daily$ds)
y_14 <- predicted_values_yearly_weekly_daily$yhat
y_15 <- predicted_values_yearly_weekly_daily$yhat_lower
y_16 <- predicted_values_yearly_weekly_daily$yhat_upper
y_16_max <- max(y_16)
y_max_4 <- max(y_16_max,y_13_max)
plot(x_13,y_13, ylim = c(y_13_min, y_max_4), xlim = c(x_13_min,x_13_max), type = "l", col = "red", xlab = "", ylab = "")
lines(x_14, y_14, type = "l", col = "blue")
lines(x_14,y_15, type = "l", col = "green")
lines(x_14,y_15, type = "l", col = "green")
mtext("d)", side = 2, line = 2, cex = 1, las = 2, padj = -11)

acc_yearly_weekly_daily <- (1 - mean(abs(y_14 - predicted_values_yearly_weekly_daily$y)/(predicted_values_yearly_weekly_daily$y)))*100

par(op)
mtext("Actual vs. Predicted", side = 3, line = 2, font = 2, cex = 1.2)
mtext("Number of COVID-19 Cases", side = 2, line = 2, cex = 1.2)
mtext("Days in 2020", side = 1, line = 2, cex = 1.2)
op <- par(usr=c(0,1,0,1), # Reset the coordinates
          xpd=NA)         # Allow plotting outside the plot region
legend(0.05,0.55, legend = c("Actual Cases", "Predicted Cases","95% Confidence Interval"), lty = 1, col = c("red","blue","green"), horiz = TRUE, cex = 0.8, box.col = 0, bg = "transparent", bty = "n")

acc_daily
acc_weekly_daily
acc_yearly_daily
acc_yearly_weekly_daily

