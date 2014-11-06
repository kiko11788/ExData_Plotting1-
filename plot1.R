data<-read.table("household_power_consumption.txt", header = TRUE, sep = ";", colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"),na.strings = "?")
data1 <- data[(data[,1] == "1/2/2007") | (data[,1] == "2/2/2007"),]
df<-as.data.frame(data1)
png(filename="plot1.png", width=480, height=480)
hist(data1[,3],col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.off()