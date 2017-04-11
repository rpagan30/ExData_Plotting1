makePlot4<-function() {
        ## Rafael Pagan
        ## Project 1
        ## Coursera - Exploratory Data Analysis
        ## John Hopkins University
        
        ####################################################################################################
        ## Plot 1: Global Active Power vs Time
        ## Plot 2: Energy Sub Metering vs Time
        ## Plot 3: Voltage vs Time
        ## Plot 4: Global Reactive Power vs Time
        ####################################################################################################
        
        ## Opens PNG graphics device.
        png(filename = "plot4.png", width = 480, height = 480, units="px")
        
        ## Set the graphics area to display a matrix of plots.
        par(mfcol=c(2,2))
        
        ## Plot 1: Makes Global_reactive_power vs Time line plot.
        d<-1:length(df$Date)
        plot(d, df$Global_active_power, type="l", xlab= "", ylab = "Global Active Power", xaxt="n")
        axis(1, at=c(0,length(df$Date)/2,max(length(df$Date))), labels=c("Thu","Fri","Sat"))
        
        ## Plot 2: Make Energy sub metering vs Time line plot.
        len<-1:length(df$Sub_metering_1)
        plot(len, df$Sub_metering_1, type="l",xlab ="", ylab="Energy sub metering", xaxt="n")
        lines(df$Sub_metering_2, col="red")
        lines(df$Sub_metering_3, col="blue")
        axis(1, at=c(0,length(df$Date)/2,max(length(df$Date))), labels=c("Thu","Fri","Sat"))
        legend("topright", bty="n", lty=c(1,1,1), col= c("black","blue","red"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), cex = 0.75)
        
        
        ## Plot 3: Makes Voltage vs. Time line plot.
        plot(1:length(df$Voltage), df$Voltage, type="l", xaxt="n", xlab = "datetime", ylab ="Voltage")
        axis(1, at=c(0,length(df$Voltage)/2,max(length(df$Voltage))), labels=c("Thu","Fri","Sat"))

        ## Plot 3:Makes Global_reactive_power vs. time line plot.
        plot(1:length(df$Global_reactive_power), df$Global_reactive_power, type="l", xaxt="n", xlab = "datetime", ylab ="Global_reactive_power")
        axis(1, at=c(0,length(df$Global_reactive_power)/2,max(length(df$Global_reactive_power))), labels=c("Thu","Fri","Sat"))
        
        ## Exports PNG plot into a PNG file.
        dev.off()
        }
        