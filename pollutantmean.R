pollutantmean <- function(directory, pollutant, id = 1:332) {
    # open all files in directory; store to files
    files <- list.files(directory, full.names=TRUE)
    
    # create empty data frame
    dat <- data.frame()
    
    # append each file to blank data frame
    for (i in id) {
        dat <- rbind(dat,read.csv(files[i]))
    }
    
    # calculate mean for pollutant listed, ignoring NA values
    mean <- mean(dat[[pollutant]], na.rm=T)
    
    #return mean
    mean
    #str(dat[, pollutant])
}
