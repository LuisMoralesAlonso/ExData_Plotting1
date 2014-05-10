## Load subset prepared preiously
elec <- read.csv("~/ExData_Plotting1/data/elec.csv")

## Plot as detailed in the exercise
par(mfrow = c(2, 2))

## Plot 1 as detailed in the exercise
plot(as.POSIXlt(elec$DateTime),elec$Global_active_power, ylab="Global Active Power", type="l", xact="n", xlab="")

## Plot 2 as detailed in the exercise
plot(as.POSIXlt(elec$DateTime),elec$Voltage, ylab="Voltage", type="l", xact="n", xlab="datetime")

## Plot 3 as detailed in the exercise
plot(as.POSIXlt(elec$DateTime),elec$Sub_metering_1, ylab="Energy sub metering", type="l", xact="n", xlab="")
lines(as.POSIXlt(elec$DateTime),elec$Sub_metering_2, type="l", xact="n", xlab="", col="red")
lines(as.POSIXlt(elec$DateTime),elec$Sub_metering_3, type="l", xact="n", xlab="", col="blue")
## Add legend
legend("topright", lty=1, col = c("black","blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

## Plot 4 as detailed in the exercise
plot(as.POSIXlt(elec$DateTime),elec$Global_reactive_power, ylab="Global_reactive_power", type="l", xact="n", xlab="datetime")

## Save to a png file in figure subdirectory
dev.copy(png, file = "./figure/plot4.png", width = 480, height = 480)
dev.off()