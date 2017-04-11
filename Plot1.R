makePlot1<-function() {
        ## Rafael Pagan
        ## Project 1
        ## Coursera - Exploratory Data Analysis
        ## John Hopkins University
        
        ####################################################################################################
        ## Frequency vs Global Active Power 
        ####################################################################################################
        
        ## Opens PNG graphics device.
        png(filename = "plot1.png", width = 480, height = 480, units="px")
        
        ## Organize charts into an matrix.
        par(mfcol=c(1,1))
        
        ## Creates histogram plot.
        hist(df$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main ="Global Active Power")

        ## Exports PNG plot into a PNG file.
        dev.off()
}