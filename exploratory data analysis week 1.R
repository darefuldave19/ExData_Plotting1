library(dplyr)
week1df = read.table("exdata_data_household_power_consumption/household_power_consumption.txt", sep = ";", header =  TRUE)
dfweek1 <- week1df %>% filter(Date == "1/2/2007" | Date == "2/2/2007")
dfweek1 <- dfweek1 %>% mutate(numericactivepower = as.numeric(dfweek1$Global_active_power))

hist(dfweek1$numericactivepower, col = "red", main =  "Global Active Power", xlab = "Global Active Power (kilowatts)")

plot(dfweek1$numericactivepower, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

par(mfrow = c(1,1))
plot(dfweek1$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(dfweek1$Sub_metering_2, col = "blue")
lines(dfweek1$Sub_metering_3, col = "red")
legend("topright", legend = c("submetering1","submetering2","submetering3"), col=c("black","blue","red"), pch = 20)

par(mfrow = c(2,2))
par(mar = c(2,4,2,2))
plot(dfweek1$numericactivepower, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
plot(dfweek1$Voltage, type = "l", ylab = "Voltage", xlab = "'")
plot(dfweek1$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(dfweek1$Sub_metering_2, col = "blue")
lines(dfweek1$Sub_metering_3, col = "red")
legend("topright", legend = c("submetering1","submetering2","submetering3"), col=c("black","blue","red"), pch = 20, cex = .7)
plot(dfweek1$Global_reactive_power, type = "l", ylab = "Global Reactive Power")
