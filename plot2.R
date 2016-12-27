
#### Source in read in & filtered electric consumption data #### 
setwd("~/Data Science Training/Exploratory Data Analysis/Week 1 Programming Assignment")

source("exploratory_data_analysis_week1.R")

#### Create Plot2 #### 
plot2 = plot(electric_consumption_data_feb$datetime, electric_consumption_data_feb$Global_active_power, type = "l", 
             main = "", xlab = "", ylab = "Global Active Power (kilowatts)")

#### Save Plot 2 #### 
setwd("~/Data Science Training/Exploratory Data Analysis/Week 1 Programming Assignment")

dev.copy(png, file="plot2.png", width=480, height=480)
dev.off()