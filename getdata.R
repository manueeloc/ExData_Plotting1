# Tgus funcion prepares the data needed to plot the graphs
getdata<-function(fday=1,sday=2){
  
#check if the txt file is in the working directory
if (!("household_power_consumption.txt" %in% list.files())){
  unzip("exdata_data_household_power_consumption.zip")
}
# Export the the data
data<-read.csv("household_power_consumption.txt", sep = ";", na.strings = "?", colClasses = c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
# Install package lubridate
if(!require(lubridate)){
  install.packages("lubridate")
}
library(lubridate)

# Formatting the data
date_time<-dmy_hms(paste(data$Date,data$Time))
data$date_time<-date_time

# Subsetting the data to February of 2007 and the days to be plotted
data_filtered<-subset(data,month(date_time)==2 & year(date_time)==2007 )
data_filtered<-subset(data_filtered,day(date_time)==fday|day(date_time)==sday)
}

