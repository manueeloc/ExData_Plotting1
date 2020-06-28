# Plot the histogram script

# Call the function to retrieve the data
source("getdata.R")
data<-getdata()

hist(data$Global_active_power, col = "red", ylab = "Frequency" , xlab = "Global active power (Kilowatts)", main = "Global Active Power")
# Copy toa png file
dev.copy(png,"plot1.png", width=480, height=480)
dev.off()
