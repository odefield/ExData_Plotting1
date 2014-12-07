## Exploratory data analysis
## Assignment 1

## Assumes the txt file is in the working directory. 
## CSV file with ; separator, . decimal point marker

plot1 <-function() {

    #read all data to df
    all_electric_data <- read.csv("household_power_consumption.txt", sep = ";", colClasses = "character")
    #Date (col 1) and Time (col2) variables to Date/Time classes in R using the strptime() and as.Date()
    all_electric_data$Date <- as.Date(all_electric_data$Date, format = "%d/%m/%Y")
    ## esimerkki, joka lukee ensin ekan rivin ja sitten muun datan alkaen 1.1.1985
#     DF.row1 <- read.table(fn, header = TRUE, nrow = 1)
#     nc <- ncol(DF.row1)
#     DF.Date <- read.table(fn, header = TRUE, as.is = TRUE, 
#                           colClasses = c(NA, rep("NULL", nc - 1)))
#     n1985 <- which.max(DF.Date$Date >= "1985-01-01")
#     
#     DF3 <- read.table(fn, col.names = names(DF.row1), skip = n1985, as.is = TRUE)
#     
    # parse only data on dates 2007-02-01 and 2007-02-02
    working_data <- all_electric_data[all_electric_data$Date >= "2007-02-01" & all_electric_data$Date <= "2007-02-02",]
    
    
}