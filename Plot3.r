
## project 3

sub1 <- as.numeric(subsetdata$Sub_metering_1)
sub2 <- as.numeric(subsetdata$Sub_metering_2)
sub3 <- as.numeric(subsetdata$Sub_metering_3)

# save the plot 

png("plot3.png", width = 480, height = 480)
plot(datetime, sub1, col ="black",  xlab ="", ylab="Engery sub metering")
lines(datetime, sub2, col ="red")
lines(datetime, sub3, col ="blue")

legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty =c(1,1,1), col =c("black", "red", "blue"))
dev.off()


