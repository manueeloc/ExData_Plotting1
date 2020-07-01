# Plot the histogram script

# Call the function to retrieve the data
source("getdata.R")
data<-getdata()

# Changing global options and distriburion
par(mfcol=c(2,2))
# Plor the data

with(data, {
  plot(date_time,Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")
  plot(Sub_metering_1~date_time, type="l",ylab="Energy sub metering", xlab="")
  lines(Sub_metering_2~date_time, col="red")
  lines(Sub_metering_3~date_time, col="blue")
  legend("topright",lwd = c(1,1,1), col=c("black", "red", "blue"),c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  plot(Voltage~date_time, type="l", xlab="datetime", ylab = "Voltage")
  plot(Global_reactive_power~date_time, type="l", ylab="Global_Reactive_Power",xlab="datetime")
})



# Copy toa png file
dev.copy(png,"plot4.png", width=480, height=480)
dev.off()