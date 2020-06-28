# Code to create the desire scatterplot

# Get the data
source("getdata.R")
data<-getdata()

#Plot the functions, argument type "l" for a line plot
plot(data$date_time,data$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")
# Copy toa png file
dev.copy(png,"plot2.png", width=480, height=480)
dev.off()
