
#### Source in read in & filtered electric consumption data #### 
setwd("~/Data Science Training/Exploratory Data Analysis/Week 1 Programming Assignment")

source("exploratory_data_analysis_week1.R")

#### Create Plot1 #### 
plot1 = hist(electric_consumption_data_feb$Global_active_power, xlim = c(0,6) ,
             col = "red",main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency")


#### Save Plot 1 #### 
setwd("~/Data Science Training/Exploratory Data Analysis/Week 1 Programming Assignment")

dev.copy(png, file="plot1.png", width=480, height=480)
dev.off()