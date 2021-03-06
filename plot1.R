##Plot 1

data = read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE)
colnames(data)
subset = data[which(data$Date == "1/2/2007" | data$Date == "2/2/2007") ,]


png("plot1.png", width=480, height=480) 
hist(as.numeric(subset$Global_active_power), col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off() 

