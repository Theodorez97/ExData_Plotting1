df <- read.csv("household_power_consumption.txt", sep=";")
df2 <- df[(df$Date == "1/2/2007" | df$Date == "2/2/2007"),]
tempo <- as.POSIXct(paste(df2$Date, df2$Time), format="%d/%m/%Y %H:%M:%S")
png("plot3.png", width = 480, height = 480)
plot(tempo, as.numeric(df2$Sub_metering_1), type="l", ylab="Energy Submetering", xlab="")
lines(tempo, as.numeric(df2$Sub_metering_2), type="l", col="red")
lines(tempo, as.numeric(df2$Sub_metering_3), type="l", col="blue")
legend('topright', legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
