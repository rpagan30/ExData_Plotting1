makePlot3<-function() {
        ## Rafael Pagan
        ## Project 1
        ## Coursera - Exploratory Data Analysis
        ## John Hopkins University
        
        ####################################################################################################
        ## Energy Sub Metering vs Time
        ####################################################################################################
        
        ## Opens PNG graphics device.
        png(filename = "plot3.png", width = 480, height = 480, units="px")
        
        ## Organize charts into an matrix.
        par(mfcol=c(1,1))
        
        ## Make line plot.
        len<-1:length(df$Sub_metering_1)
        plot(len, df$Sub_metering_1, type="l",xlab ="", ylab="Energy sub metering", xaxt="n")
        lines(df$Sub_metering_2, col="red")
        lines(df$Sub_metering_3, col="blue")
        axis(1, at=c(0,length(df$Date)/2,max(length(df$Date))), labels=c("Thu","Fri","Sat"))
        legend("topright", lty=c(1,1,1), col= c("black","blue","red"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
        
        ## Exports PNG plot into a PNG file.
        dev.off()
        
}