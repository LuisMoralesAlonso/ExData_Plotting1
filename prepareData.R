## Prepare Data. Just from 2007-02-01 and 2007-02-02
## Suppose original data in data subdirectory
electrical <- read.csv("./data/household_power_consumption.txt",sep=";")
## Convert Date column into Date type
electrical$Date <- as.Date(electrical$Date,"%d/%m/%Y")
## Create new column DateTime
electrical$DateTime <- strptime(paste(electrical$Date,electrical$Time),format="%Y-%m-%d %X")

## Subset data betwwn 2007-02-01 and 2007-02-02
firstday <- as.Date("2007-02-01")
secondday <- as.Date("2007-02-02")
elec <- electrical[electrical$Date==firstday | electrical$Date==secondday,]
## Create a new file elec.csv with the subset
write.csv(elec,filename="elec.csv")