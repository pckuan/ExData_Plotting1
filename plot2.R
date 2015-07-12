household_power_consumption <- read.csv("household_power_consumption.txt", sep=";")
DateIndex<-grep("^1/2/2007|^2/2/2007",household_power_consumption[,1])
SelectedDate<-household_power_consumption[DateIndex,]
SelectedDate$DateTime <- strptime(paste(SelectedDate$Date, SelectedDate$Time), "%d/%m/%Y %H:%M:%S") 
png(filename = "plot2.png",width = 480, height = 480, units = "px")
plot(SelectedDate$DateTime,as.numeric(as.character(SelectedDate$Global_active_power)),type="l",xlab='',ylab='Global Active Power (kilowatts)')
dev.off()
