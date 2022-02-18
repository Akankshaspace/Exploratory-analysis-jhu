df <- read.table("household_power_consumption.txt",
                 na.strings = "?",header = TRUE,sep = ";")
library(lubridate)
df$Date <- dmy(df$Date)
df$Date <- as.character(df$Date)
date1 <- df[grep("2007-02-01", df$Date),]
date2 <- df[grep("2007-02-02", df$Date),]
finaldf <- rbind(date1,date2)

##plot 1
hist(finaldf$Global_active_power , xlab = "Global active power (kilowatts)",
   main = "Gobal active power" ,col = "red" )
