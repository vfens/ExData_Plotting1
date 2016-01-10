
##############################################
#
# module 4 - exploratory data analysis
# course assignment week 1 - plots

# PLOT 1

##############################################

# setting language defaults to english (for plotting days of the week)
# otherwise the days of the week are plotted in the local language
Sys.setlocale("LC_ALL",'en_US.UTF-8')
size <- 480

# read in the data
myData <- read.table("household_power_consumption.txt", sep=";", header=TRUE, stringsAsFactors=FALSE, strip.white = TRUE, dec=".")
myData <- subset(myData, Date == "1/2/2007" | Date == "2/2/2007")

##############################################

# plot 1 - plot histogram of global active power
png("plot1.png", width=size, height=size)
hist(as.numeric(myData$Global_active_power), col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()


##############################################

