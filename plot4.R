#plot4

setwd('D:/Maggie/nk university/coursera maggie r/exdata_data_household_power_consumption')
all<-read.table("household_power_consumption.txt",header = TRUE, sep=";",nrows = 2075259,stringsAsFactors = FALSE)
mydata<-all[all['Date']=='1/2/2007' | all['Date']=='2/2/2007',]
d1<-mydata[,'Date']
d2<-mydata[,'Time']
alldt<-paste(d1,d2)
newdt<-strptime(alldt,'%d/%m/%Y %H:%M:%S')
Sys.setlocale("LC_ALL", "English")
par(mfrow=c(2,2),cex.lab=0.7,cex.axis=0.7,mar=c(4,4,2,2))
#plot no.1:Global Active Power
plot(newdt,mydata[,'Global_active_power'],pch='.',ylab='Global Active Power',xlab = '')
lines(newdt,mydata[,'Global_active_power'])
#plot no.2:Voltage
plot(newdt,mydata[,'Voltage'],pch='.',xlab = 'datetime',ylab = 'Voltage')
lines(newdt,mydata[,'Voltage'])
#plot no.3:Energy sub metering
plot(newdt,mydata[,'Sub_metering_1'],pch='.',ylab='Energy sub metering',xlab = '')
lines(newdt,mydata[,'Sub_metering_1'])
lines(newdt,mydata[,'Sub_metering_2'],col='red')
lines(newdt,mydata[,'Sub_metering_3'],col='blue')
legend('topright',legend = c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),lty = c(1,1,1),col = c('black','red','blue'),cex=0.4,bty='n')
#plot no.4:Global_reactive_power
plot(newdt,mydata[,'Global_reactive_power'],pch='.',xlab = 'datetime',ylab = 'Global_reactive_power',yaxt='n')
lines(newdt,mydata[,'Global_reactive_power'])
axis(side=2,at=seq(0.0,0.5,0.1),labels = c('0.0','0.1','0.2','0.3','0.4','0.5'))
dev.copy(png,file='plot4.png')
dev.off()