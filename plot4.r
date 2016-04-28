##MAKE PLOT4 with a width of 480 pixels and a height of 480 pixels.
source("dataset.r")

makeplot4<-function(filename){
    png(filename,width=480,height=480)
    
    par(mfcol=c(2,2))
    ##topleft
    plot(dt$DateTime,dt$Global_active_power,type="l",xlab="",ylab="Global Active Power")
    
    ##bottomleft
    plot(dt$DateTime,dt$Sub_metering_1,type="l",xlab="",ylab ="Energy sub metering")
    lines(dt$DateTime,dt$Sub_metering_2,type="l", col="red")
    lines(dt$DateTime,dt$Sub_metering_3,type="l", col="blue")
    legend('topright',c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty="solid",col=c("black","red","blue"))
    
    ##topright
    plot(dt$DateTime, dt$Voltage,type="l",xlab="datetime",ylab="Voltage")
    
    ##bottomright
    plot(dt$DateTime,dt$Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power")
    
    dev.off()
}

filename<-"./plot4.png"
makeplot4(filename)
