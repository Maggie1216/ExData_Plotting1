#plot1

setwd('D:/Maggie/nk university/coursera maggie r/exdata_data_household_power_consumption')
all<-read.table("household_power_consumption.txt",header = TRUE, sep=";",nrows = 2075259,stringsAsFactors = FALSE)
mydata<-all[all['Date']=='1/2/2007' | all['Date']=='2/2/2007',]
class(mydata[,'Global_active_power'])<-'numeric'
hist(mydata[,'Global_active_power'],col = 'red',main = 'Global Active Power',xlab = 'Global Active Power (kilowatts)')
dev.copy(png,file='plot1.png')
dev.off()