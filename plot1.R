data <- read.table("household_power_consumption.txt",sep = ";",header = FALSE, skip = 1)

names(data) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

sample_data <- subset(data, data$Date=="1/2/2007"|data$Date=="2/2/2007")

sample_data$Date <- as.Date(sample_data$Date, format="%d/%m/%Y")

hist(as.numeric(as.character(sample_data$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")

dev.copy(png, filename="plot1.png")
dev.off()