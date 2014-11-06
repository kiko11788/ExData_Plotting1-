data<-read.table("household_power_consumption.txt", header = TRUE, sep = ";", colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"),na.strings = "?")
data1 <- data[(data[,1] == "1/2/2007") | (data[,1] == "2/2/2007"),]
df<-as.data.frame(data1)
df$dateTime <-strptime(paste(df$Date, df$Time, sep=" "), format="%d/%m/%Y %H:%M:%S")
png(filename="plot2.png", width=480, height=480)
plot(df$dateTime,df$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()