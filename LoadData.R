LoadData <- function() {
        
        ## Rafael Pagan
        ## Project 1
        ## Coursera - Exploratory Data Analysis
        ## John Hopkins University
        
        ## DESCRIPTION #####################################################################################
        ## This program extracts data from given dates from a text file. With 
        ## The program takes a couple of minutes to run due to the size of the data file. 
        ## The data need for the program to run can be found at:
        ## https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip.
        ####################################################################################################
        
        ## USAGE ###########################################################################################
        ## 1. Set your current working directory to where you have the file "household_power_consumption.txt" 
        ## Plot1.R, Plot2.R, Plot3.R, and Plot4.R, otherwise set the full path for your file in line 36, 
        ## "df<-read.table("household_power_consumption.txt", sep = ";", nrows = 2075259, header = TRUE)".
        ##
        ## 2. Source Plot1.R, Plot2.R, Plot3.R, Plot4.R using source('~/YOUR_PATH_HERE/Plot1.R').
        ##
        ## 3. Run > df<-LoadData(). Wait a couple of minutes for the program to load the data into memory 
        ##
        ## 4. > makePlot1()
        ##    > makePlot2()
        ##    > makePlot3()
        ##    > makePlot4()
        ##
        ## 5. Done.
        ##
        ####################################################################################################
        
        ## CODE ############################################################################################
        ## Reads file into memory.
        print("Loading data...")
        df<-read.table("household_power_consumption.txt", sep = ";", nrows = 2075259, header = TRUE)

        ## Subsets data according to the given dates.
        df$Date<-strptime(df$Date, "%d/%m/%Y")
        df<-df[df$Date >= "2007-02-01 AST" & df$Date <= "2007-02-02 AST",]
        
        ## Changes factor columns into numerics.
        df$Global_active_power<-as.numeric(levels(df$Global_active_power))[df$Global_active_power]
        df$Global_reactive_power<-as.numeric(levels(df$Global_reactive_power))[df$Global_reactive_power]
        df$Voltage<-as.numeric(levels(df$Voltage))[df$Voltage]
        df$Sub_metering_1<-as.numeric(levels(df$Sub_metering_1))[df$Sub_metering_1]
        df$Sub_metering_2<-as.numeric(levels(df$Sub_metering_2))[df$Sub_metering_2]
        print("Done.")
        df
}