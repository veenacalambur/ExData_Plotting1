
#### Source in read in & filtered electric consumption data #### 
setwd("~/Data Science Training/Exploratory Data Analysis/Week 1 Programming Assignment")

source("exploratory_data_analysis_week1.R")

par(mfrow = c(2,2))

plot1 = plot(electric_consumption_data_feb$datetime, electric_consumption_data_feb$Global_active_power,type = "l", 
             main = "", xlab = "", ylab = "Global Active Power (kilowatts)")

plot2 = plot(electric_consumption_data_feb$datetime, electric_consumption_data_feb$Voltage, type = "l",
             main = "", xlab = "datetime", ylab = "Voltage")

plot3 = plot(electric_consumption_data_feb$datetime, electric_consumption_data_feb$Sub_metering_1, type = "l" ,
             main = "", xlab = "", ylab = "Energy sub metering", col = "black",ylim = c(0,40))

lines(electric_consumption_data_feb$datetime, electric_consumption_data_feb$Sub_metering_2, col = "red")
lines(electric_consumption_data_feb$datetime, electric_consumption_data_feb$Sub_metering_3, col = "blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1,1,1), col = c("black", "red", "blue"), bty = "n")

plot4 = plot(electric_consumption_data_feb$datetime, electric_consumption_data_feb$Global_reactive_power, type = "l", 
             main = "", xlab = "datetime", ylab = "Global_reactive_power")

#### Save Plot 4 #### 
setwd("~/Data Science Training/Exploratory Data Analysis/Week 1 Programming Assignment")

dev.copy(png, file="plot4.png", width=480, height=480)
dev.off()
