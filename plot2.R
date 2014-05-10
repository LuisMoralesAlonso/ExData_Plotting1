## Load subset prepared preiously
elec <- read.csv("~/ExData_Plotting1/data/elec.csv")

## Plot the histogram as detailed in the exercise
plot(as.POSIXlt(elec$DateTime),elec$Global_active_power, ylab="Global Active Power (kilowatts)", type="l", xact="n", xlab="")

## Save to a png file in figure subdirectory
dev.copy(png, file = "./figure/plot2.png", width = 480, height = 480)
dev.off()