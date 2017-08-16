#plot3

setwd('D:/Maggie/nk university/coursera maggie r/exdata_data_household_power_consumption')
all<-read.table("household_power_consumption.txt",header = TRUE, sep=";",nrows = 2075259,stringsAsFactors = FALSE)
mydata<-all[all['Date']=='1/2/2007' | all['Date']=='2/2/2007',]
d1<-mydata[,'Date']
d2<-mydata[,'Time']
alldt<-paste(d1,d2)
newdt<-strptime(alldt,'%d/%m/%Y %H:%M:%S')
Sys.setlocale("LC_ALL", "English")
plot(newdt,mydata[,'Sub_metering_1'],pch='.',ylab='Energy sub metering',xlab = '')
lines(newdt,mydata[,'Sub_metering_1'])
lines(newdt,mydata[,'Sub_metering_2'],col='red')
lines(newdt,mydata[,'Sub_metering_3'],col='blue')
legend('topright',legend = c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),lty =1,col = c('black','red','blue'),cex=0.6)
dev.copy(png,file='plot3.png')
dev.off()
