## Load subset prepared preiously
elec <- read.csv("~/ExData_Plotting1/data/elec.csv")

## Plot the histogram as detailed in the exercise
hist(elec$Global_active_power,xlab="Global Active Power (kilowatts)",main="Global Active Power",col="red")

## Save to a png file in figure subdirectory
dev.copy(png, file = "./figure/plot1.png", width = 480, height = 480)
dev.off()