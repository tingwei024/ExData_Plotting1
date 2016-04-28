##MAKE PLOT3 with a width of 480 pixels and a height of 480 pixels.
source("dataset.r")

makeplot3<-function(filename){
    png(filename,width=480,height=480)
    
    plot(dt$DateTime,dt$Sub_metering_1,type="l",xlab="",ylab ="Energy sub metering")
    lines(dt$DateTime,dt$Sub_metering_2,type="l", col="red")
    lines(dt$DateTime,dt$Sub_metering_3,type="l", col="blue")
    legend('topright',c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty="solid",col=c("black","red","blue"))
    
    dev.off()
}

filename<-"./plot3.png"
makeplot3(filename)
