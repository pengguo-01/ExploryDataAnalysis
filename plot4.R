## project 4
## project 4
png("plot4.png", width = 480, height = 480)
volt <- as.numeric(subsetdata$Voltage)
par(mfrow = c(2,2))
## plot 1
plot(datetime,GlobActPoe,type="l", xlab= "", ylab = "Global active power")
## plot 2
plot(datetime, volt,type="l", xlab= "", ylab="voltage")
## plot3
plot(datetime, sub1,type="l", col ="black", xlab= "", ylab= "Energy sub metering")
lines(datetime, sub2, col ="red")
lines(datetime, sub3, col="blue")
legend("topright", legend =c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=c(1,1,1), col =c("black","red", "blue"))

## plot 4
plot(datetime, GlobActPoe,type="l", xlab ="datetime", ylab="Global_reactive_power")
lines(datetime,subsetdata$Global_active_power)
dev.off()
