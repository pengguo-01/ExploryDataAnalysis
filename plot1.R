library("data.table")

Consum  <- data.table::fread(input = "household_power_consumption.txt", 
                             na.strings ="?"
)

head(Consum)
dim(Consum)
?strptime
## set the date format 

subsetdata <- Consum[Consum$Date %in% c("1/2/2007","2/2/2007"),]
## filter the data

## convert string to numeric format 
GlobActPoe <-as.numeric(subsetdata$Global_active_power)

## make and save plot 
## png graphic devices for BMP, JPEG, PNG

png("plot1.png", width = 480, height = 480) 
hist(GlobActPoe, col="red", main ="Gloabal Active Power",ylab= "Frequency")
dev.off()




