
##############################################
#
# module 4 - exploratory data analysis
# course assignment week 1 - plots

# PLOT 4

##############################################

# setting language defaults to english (for plotting days of the week)
# otherwise the days of the week are plotted in the local language
Sys.setlocale("LC_ALL",'en_US.UTF-8')
size <- 480

# read in the data
myData <- read.table("household_power_consumption.txt", sep=";", header=TRUE, stringsAsFactors=FALSE, strip.white = TRUE, dec=".")
myData <- subset(myData, Date == "1/2/2007" | Date == "2/2/2007")


##############################################

# plot 4

# converting columns and inserting into different objects
datetime <- strptime(paste(myData$Date, myData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

# create plot
png("plot4.png", width=size, height=size)
par(mfrow = c(2, 2)) 

#plot top left
plot(datetime, as.numeric(myData$Global_active_power), type="l", xlab="", ylab="Global Active Power", cex=0.2)

#plot top right
plot(datetime, as.numeric(myData$Voltage), type="l", xlab="datetime", ylab="Voltage")

#plot bottom left
plot(datetime, as.numeric(myData$Sub_metering_1), type="l", ylab="Energy Submetering", xlab="")
lines(datetime, as.numeric(myData$Sub_metering_2), type="l", col="red")
lines(datetime, as.numeric(myData$Sub_metering_3), type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")

#plot bottom right
plot(datetime, as.numeric(myData$Global_reactive_power), type="l", xlab="datetime", ylab="Global_reactive_power")


dev.off()

##############################################

