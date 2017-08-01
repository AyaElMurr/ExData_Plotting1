##Plot 3

data = read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE)
colnames(data)
subset = data[which(data$Date == "1/2/2007" | data$Date == "2/2/2007") ,]

x = strptime(paste(subset$Date, subset$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
y = as.numeric(subset$Sub_metering_1)
z = as.numeric(subset$Sub_metering_2)
w = as.numeric(subset$Sub_metering_3)


png("plot3.png", width=480, height=480) 
plot(x, y, type="l", ylab="Energy Submetering", xlab="") 
lines(x, z, type="l", col="red") 
lines(x, w, type="l", col="blue") 
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue")) 
dev.off() 
