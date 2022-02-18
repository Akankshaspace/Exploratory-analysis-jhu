df <- read.table("household_power_consumption.txt",
                 na.strings = "?",header = TRUE,sep = ";")
library(lubridate)
df$Date <- dmy(df$Date)
df$Date <- as.Date(df$Date)
date1 <- df[grep("2007-02-01", df$Date),]
date2 <- df[grep("2007-02-02", df$Date),]
finaldf <- rbind(date1,date2)

##plot 3
par(mfrow = c(1,1) ,new = TRUE)
plot(finaldf$Sub_metering_3,type ="l",xlim = c(0,3000),ylim = c(0,30),col = "blue",ylab = "Energy sub metering") 
par(mfrow = c(1,1), new = TRUE)
plot(finaldf$Sub_metering_2,type = "l", xlim = c(0,3000),ylim = c(0,30),col = "red", ylab = "Energy sub metering")
par(mfrow = c(1,1), new = TRUE)
plot(finaldf$Sub_metering_1,type = "l", xlim = c(0,3000),ylim = c(0,30) ,ylab = "Energy sub metering")
legend("topright",pch = "-" ,col = c("black","red","blue"),legend = c("sub_metering_1","sub_metering_2","sub_metering_3"), cex = 0.5)
axis(side = 1 , at = c(0,1500,3000), labels = c("Thu","Fri","Sat"))

