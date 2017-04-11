makePlot2<-function() {
        ## Rafael Pagan
        ## Project 1
        ## Coursera - Exploratory Data Analysis
        ## John Hopkins University
        
        ####################################################################################################
        ## Global Active Power vs Time
        ####################################################################################################
        
        ## Opens PNG graphics device.
        png(filename = "plot2.png", width = 480, height = 480, units="px")
        
        ## Organize charts into an matrix.
        par(mfcol=c(1,1))
        
        ## Creates line plot - Global_reactive_power vs Time.
        d<-1:length(df$Date)
        plot(d, df$Global_active_power, type="l", xlab= "", ylab = "Global Active Power (kilowatts)", xaxt="n")
        axis(1, at=c(0,length(df$Date)/2,max(length(df$Date))), labels=c("Thu","Fri","Sat"))
        
        ## Exports PNG plot into a PNG file.
        dev.off()
}