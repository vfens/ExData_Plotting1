
##############################################
#
# module 4 - exploratory data analysis
# course assignment week 1 - plots

# PLOT 2

##############################################

# setting language defaults to english (for plotting days of the week)
# otherwise the days of the week are plotted in the local language
Sys.setlocale("LC_ALL",'en_US.UTF-8')
size <- 480

# read in the data
myData <- read.table("household_power_consumption.txt", sep=";", header=TRUE, stringsAsFactors=FALSE, strip.white = TRUE, dec=".")
myData <- subset(myData, Date == "1/2/2007" | Date == "2/2/2007")


##############################################

# plot 2 

# converting columns and inserting into different objects
datetime <- strptime(paste(myData$Date, myData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

# plot 
png("plot2.png", width=size, height=size)
plot(datetime, as.numeric(myData$Global_active_power), type="l", xlab="Date", ylab="Global Active Power (kilowatts)")
dev.off()


##############################################
