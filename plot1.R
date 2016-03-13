full_data <- read.table("household_power_consumption.txt", header = T, sep = ';', na.strings = "?", colClasses = c("character", "character", "numeric","numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))
full_data$Date = as.Date(full_data$Date, format = "%d/%m/%Y")

data <- subset(full_data, full_data$Date >= "2007-02-01" & full_data$Date <= "2007-02-02")

png(filename = "plot1.png", width = 480, height = 480)
hist(data$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab = "Frequency", col = "red")
dev.off()