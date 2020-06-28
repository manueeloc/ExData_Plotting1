# Plot the histogram script

# Call the function to retrieve the data
source("getdata.R")
data<-getdata()

# Plor the data
with(data, {
  plot(Sub_metering_1~date_time, type="l",ylab="Energy sub metering", xlab="")
  lines(Sub_metering_2~date_time, col="red")
  lines(Sub_metering_3~date_time, col="blue")
})
legend("topright",lwd = c(1,1,1), col=c("black", "red", "blue"),c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))


# Copy toa png file
dev.copy(png,"plot3.png", width=480, height=480)
dev.off()
