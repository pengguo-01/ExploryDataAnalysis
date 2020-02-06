## project 2
datetime <- strptime(paste(subsetdata$Date, subsetdata$Time, sep = ""), "%d/%m/%Y %H:%M:%S")
png("plot2.png", width=480, height=480)
plot(datetime,GlobActPoe,type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
