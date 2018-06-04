z<-read.table("household_power_consumption.txt",sep=';',header=TRUE)
y<-subset(z, z$Date=="1/2/2007"|z$Date=="2/2/2007")
y$Global_active_power<-as.numeric(y$Global_active_power)/1000;
png("plot1.png")
hist(y$Global_active_power,main="Global Active Power",ylab="Frequency",xlab="Global Active Power(killowatts)",col="red")
dev.off()