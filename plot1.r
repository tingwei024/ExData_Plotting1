##MAKE PLOT1 with a width of 480 pixels and a height of 480 pixels.
source("dataset.r")

makeplot1<-function(filename){
    png(filename,width=480,height=480)
    hist(dt$Global_active_power,main="Global Active Power",xlab="Global Active Power (kilowatts)",col="red")
    dev.off()
}

filename<-"./plot1.png"
makeplot1(filename)
