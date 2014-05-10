## Load subset prepared preiously
elec <- read.csv("~/ExData_Plotting1/data/elec.csv")

## Plot as detailed in the exercise
plot(as.POSIXlt(elec$DateTime),elec$Sub_metering_1, ylab="Energy sub metering", type="l", xact="n", xlab="")
lines(as.POSIXlt(elec$DateTime),elec$Sub_metering_2, type="l", xact="n", xlab="", col="red")
lines(as.POSIXlt(elec$DateTime),elec$Sub_metering_3, type="l", xact="n", xlab="", col="blue")

## Add legend
legend("topright", lty=1, col = c("black","blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

## Save to a png file in figure subdirectory
dev.copy(png, file = "./figure/plot2.png", width = 480, height = 480)
dev.off()