source("./ExData_Plotting1/DataPrep.R")

plot2 <- function(data=NULL) {
    #if data is not loaded load it
    if(is.null(data))
        data <- load_data()
    
    #create png file
    png("./ExData_Plotting1/plot2.png", width=400, height=400)
    
    #Create plot
    plot(data$Time, data$Global_active_power,
         type="l",
         xlab="",
         ylab="Global Active Power (kilowatts)")
    
    dev.off()
}