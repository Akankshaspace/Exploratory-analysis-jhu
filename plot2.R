df <- read.table("household_power_consumption.txt",
                   na.strings = "?",header = TRUE,sep = ";")
library(lubridate)
df$Date <- dmy(df$Date)
df$Date <- as.Date(df$Date)
date1 <- df[grep("2007-02-01", df$Date),]
date2 <- df[grep("2007-02-02", df$Date),]
finaldf <- rbind(date1,date2)

##plot 2
plot(finaldf$Global_active_power, type = "l", xlim = c(0,3000),ylab = "Global active Power(kilowatts)")
axis(side = 1, at = c(0,1500,3000),label = c("Thu","Fri","Sat"))
