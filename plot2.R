df <- read.csv("household_power_consumption.txt", sep=";")
df2 <- df[(df$Date == "1/2/2007" | df$Date == "2/2/2007"),]
tempo <- as.POSIXct(paste(df2$Date, df2$Time), format="%d/%m/%Y %H:%M:%S")
png("plot2.png", width = 480, height = 480)
plot(tempo, as.numeric(df2$Global_active_power), xlab="", ylab="Global Active Power (kilowatts)", type="l")
