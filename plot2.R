##Plot 2


data = read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE)
colnames(data)
subset = data[which(data$Date == "1/2/2007" | data$Date == "2/2/2007") ,]

x = strptime(paste(subset$Date, subset$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
y = as.numeric(subset$Global_active_power)

png("plot2.png", width=480, height=480) 
plot(x, y, type="l", xlab="", ylab="Global Active Power (kilowatts)") 
dev.off() 
