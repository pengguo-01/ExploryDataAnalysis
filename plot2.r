## project 2
## convert to time frame
datetime <- strptime(paste(subsetdata$Date, subsetdata$Time, sep = ""), "%d/%m/%Y %H:%M:%S")

png("plot2.png",width = 480, height = 480)
plot(datetime, GlobActPoe, xlab= "",ylab="global actibe power")
dev.off()




