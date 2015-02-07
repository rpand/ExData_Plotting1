source("./ExData_Plotting1/DataPrep.R")

plot2 <- function(data=NULL) {
    if(is.null(data))
        data <- load_data()
    
    png("./ExData_Plotting1/plot2.png", width=400, height=400)
    
    plot(data$Time, data$Global_active_power,
         type="l",
         xlab="",
         ylab="Global Active Power (kilowatts)")
    
    dev.off()
}