if(!file.exists("exdata-data-household_power_consumption.zip")) {
    temp <- tempfile()
    download.file("http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",temp)
    file <- unzip(temp)
    unlink(temp)
}
pc <- read.table(file, header=T, sep=";")
pc$Date <- as.Date(pc$Date, format="%d/%m/%Y")
df <- pc[(pc$Date=="2007-02-01") | (pc$Date=="2007-02-02"),]
df$act_pc <- as.numeric(as.character(df$act_pc))
df$rct_pc <- as.numeric(as.character(df$rct_pc))
df$Voltage <- as.numeric(as.character(df$Voltage))