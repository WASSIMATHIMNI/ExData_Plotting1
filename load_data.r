load_data <- function() {
    filename <- "household_power_consumption.txt"
    df <- read.table(filename,
                     header=TRUE,
                     sep=";",
                     colClasses=c("character", "character", rep("numeric",7)),
                     na="?")

    # Convert time and date columns
    df$Time <- strptime(paste(df$Date, df$Time), "%d/%m/%Y %H:%M:%S")
    df$Date <- as.Date(df$Date, "%d/%m/%Y")

    #Subset between 2007-02-01 and 2007-02-02
    dates <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
    df <- subset(df, Date %in% dates)

    return(df)
}
