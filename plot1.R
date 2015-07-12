household_power_consumption <- read.csv("household_power_consumption.txt", sep=";")
DateIndex<-grep("^1/2/2007|^2/2/2007",household_power_consumption[,1])
SelectedDate<-household_power_consumption[DateIndex,]
png(filename = "plot1.png",width = 480, height = 480, units = "px")
hist(as.numeric(as.character(SelectedDate$Global_active_power)),xlab='Global Active Power (kilowatts)',main="Global Active Power",col='red')
dev.off()
