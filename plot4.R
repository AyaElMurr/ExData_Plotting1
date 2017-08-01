##Plot 4

data = read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE)
colnames(data)
subset = data[which(data$Date == "1/2/2007" | data$Date == "2/2/2007") ,]

x = strptime(paste(subset$Date, subset$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
y = as.numeric(subset$Sub_metering_1)
z = as.numeric(subset$Sub_metering_2)
w = as.numeric(subset$Sub_metering_3)

GAP = as.numeric(subset$Global_active_power)
GRP = as.numeric(subset$Global_reactive_power)
Vol = as.numeric(subset$Voltage)

png("plot4.png", width=480, height=480) 
par(mfrow = c(2, 2)) 

plot(x, GAP, type="l", xlab="", ylab="Global Active Power", cex=0.2)

plot(x, Vol, type="l", xlab="datetime", ylab="Voltage")

plot(x, y, type="l", ylab="Energy Submetering", xlab="") 
lines(x, z, type="l", col="red") 
lines(x, w, type="l", col="blue") 
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2.5, col=c("black", "red", "blue")) 


plot(x, GRP, type="l", xlab="datetime", ylab="Global_reactive_power")


dev.off() 

