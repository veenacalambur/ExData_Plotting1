
#### Load Libraries #### 
library(dplyr)
library(tidyr)

#### Read in Data #### 

#setwd("~/Data Science Training/Exploratory Data Analysis/Week 1 Programming Assignment/exdata%2Fdata%2Fhousehold_power_consumption")
setwd("exdata%2Fdata%2Fhousehold_power_consumption")

electric_consumption_data = read.table("household_power_consumption.txt", sep = ";", header = T, quote = "")

#### Filter down to Feb 2007 dates #### 
electric_consumption_data_feb = electric_consumption_data%>%
  dplyr:: filter(Date == "1/2/2007" | Date == "2/2/2007")


#### Update Object types #### 

##create a final date time object ##
electric_consumption_data_feb$datetime = as.POSIXct(strptime(paste(electric_consumption_data_feb$Date, electric_consumption_data_feb$Time, sep = " "), "%d/%m/%Y %H:%M:%S"))

## convert remaining variables to numeric ## 

electric_consumption_data_feb$Global_active_power = as.numeric(as.character(electric_consumption_data_feb$Global_active_power))
electric_consumption_data_feb$Global_reactive_power = as.numeric(as.character(electric_consumption_data_feb$Global_reactive_power))
electric_consumption_data_feb$Voltage = as.numeric(as.character(electric_consumption_data_feb$Voltage))
electric_consumption_data_feb$Global_intensity = as.numeric(as.character(electric_consumption_data_feb$Global_intensity))
electric_consumption_data_feb$Sub_metering_1 = as.numeric(as.character(electric_consumption_data_feb$Sub_metering_1))
electric_consumption_data_feb$Sub_metering_2 = as.numeric(as.character(electric_consumption_data_feb$Sub_metering_2))
electric_consumption_data_feb$Sub_metering_3 = as.numeric(as.character(electric_consumption_data_feb$Sub_metering_3))


rm(electric_consumption_data)
