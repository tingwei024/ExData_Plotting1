##MAKE PLOT2 with a width of 480 pixels and a height of 480 pixels.
source("dataset.r")

makeplot2<-function(filename){
    png(filename,width=480,height=480)
    plot(dt$DateTime,dt$Global_active_power,type="l",xlab="",ylab="Global Active Power (Kilowatts)")
    dev.off()
}

filename<-"./plot2.png"
makeplot2(filename)
