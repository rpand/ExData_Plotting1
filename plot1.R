source("./ExData_Plotting1/DataPrep.R")

plot1 <- function(data=NULL) {
    #if data is not loaded load it
    if(is.null(data))
        data <- load_data()
    
    #create png file
    png("./ExData_Plotting1/plot1.png", width=400, height=400)

    #histogram    
    hist(data$Global_active_power,
         main="Global Active Power",
         xlab="Global Active Power (kilowatts)",
         ylab="Frequency",
         col="red")
    
    dev.off()
}