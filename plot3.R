
##############################################
#
# module 4 - exploratory data analysis
# course assignment week 1 - plots

# PLOT 3

##############################################

# setting language defaults to english (for plotting days of the week)
# otherwise the days of the week are plotted in the local language
Sys.setlocale("LC_ALL",'en_US.UTF-8')
size <- 480

# read in the data
myData <- read.table("household_power_consumption.txt", sep=";", header=TRUE, stringsAsFactors=FALSE, strip.white = TRUE, dec=".")
myData <- subset(myData, Date == "1/2/2007" | Date == "2/2/2007")

##############################################

# plot 3 

# converting columns and inserting into different objects
datetime <- strptime(paste(myData$Date, myData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

# create plot
png("plot3.png", width=size, height=size)
plot(datetime, as.numeric(myData$Sub_metering_1), type="l", ylab="Energy Submetering", xlab="")
lines(datetime, as.numeric(myData$Sub_metering_2), type="l", col="red")
lines(datetime, as.numeric(myData$Sub_metering_3), type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()


##############################################
