power <- read.table("household_power_consumption.txt", header = T, sep=";", comment.char="%", stringsAsFactors=FALSE, na.strings="?")
head(power)
data<- subset(power,power$Date=="1/2/2007"|power$Date=="2/2/2007")
time <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
gap <- data$Global_active_power
hist(gap, col="red", xlab="Global Active Power (kilowatts)", ylab="Frequency", main="Global Active Power")
dev.copy(png, file="plot1.png", width=480, height=480)
dev.off()