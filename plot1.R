df <- read.csv("household_power_consumption.txt", sep=";")
df2 <- df[(df$Date == "1/2/2007" | df$Date == "2/2/2007"),]
png("plot1.png", width = 480, height = 480)
hist(as.numeric(df2$Global_active_power), col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")


