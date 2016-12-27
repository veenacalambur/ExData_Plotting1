
#### Source in read in & filtered electric consumption data #### 
setwd("~/Data Science Training/Exploratory Data Analysis/Week 1 Programming Assignment")

source("exploratory_data_analysis_week1.R")

#### Create Plot3 #### 
setwd("~/Data Science Training/Exploratory Data Analysis/Week 1 Programming Assignment")

plot3 = plot(electric_consumption_data_feb$datetime, electric_consumption_data_feb$Sub_metering_1, type = "l", 
             main = "", xlab = "", ylab = "Energy sub metering", col = "black",ylim = c(0,40))

lines(electric_consumption_data_feb$datetime, electric_consumption_data_feb$Sub_metering_2, col = "red")
lines(electric_consumption_data_feb$datetime, electric_consumption_data_feb$Sub_metering_3, col = "blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1,1,1), col = c("black", "red", "blue"))

#### Save Plot 1 #### 
setwd("~/Data Science Training/Exploratory Data Analysis/Week 1 Programming Assignment")

dev.copy(png, file="plot3.png", width=480, height=480)
dev.off()