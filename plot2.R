full_data <- read.table("household_power_consumption.txt", header = T, sep = ';', na.strings = "?", colClasses = c("character", "character", "numeric","numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))
full_data$Date_and_Time <- paste(full_data$Date, full_data$Time, sep=" ")
full_data$Date = as.Date(full_data$Date, format = "%d/%m/%Y")
full_data$Date_and_Time = strptime(full_data$Date_and_Time, format = "%d/%m/%Y %H:%M:%S")

data <- subset(full_data, full_data$Date >= "2007-02-01" & full_data$Date <= "2007-02-02")

png(filename="plot2.png", width=480, height=480)
plot(data$Date_and_Time, data$Global_active_power, main="", xlab = "", ylab ="Global Active Power (kilowatts)", type="l")
dev.off()