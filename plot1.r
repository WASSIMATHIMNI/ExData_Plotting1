source("load_data.R")

plot1 <- function(data=NULL) {
    if(is.null(data)) print("Please provide a non empty data set")
    else{

          png("plot1.png", width=480, height=480)

         hist(data$Global_active_power,
              main="Global Active Power",
              xlab="Global Active Power (kilowatts)",
              ylab="Frequency",
              col="red")
                  
   }

}

#creates Frequency ~ Global Active Power png file with loaded data
plot1(load_data())
