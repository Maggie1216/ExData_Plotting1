#plot2

setwd('D:/Maggie/nk university/coursera maggie r/exdata_data_household_power_consumption')
all<-read.table("household_power_consumption.txt",header = TRUE, sep=";",nrows = 2075259,stringsAsFactors = FALSE)
mydata<-all[all['Date']=='1/2/2007' | all['Date']=='2/2/2007',]
d1<-mydata[,'Date']
d2<-mydata[,'Time']
alldt<-paste(d1,d2)
newdt<-strptime(alldt,'%d/%m/%Y %H:%M:%S')
Sys.setlocale("LC_ALL", "English")
plot(newdt,mydata[,'Global_active_power'],pch='.',ylab='Global Active Power (kilowatts)',xlab = '')
lines(newdt,mydata[,'Global_active_power'])
dev.copy(png,file='plot2.png')
dev.off()