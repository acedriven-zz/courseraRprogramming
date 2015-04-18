complete <- function(directory, id = 1:332) {
    # open all files in directory; store to files
    files <- list.files(directory, full.names=TRUE)
    
    # create empty data frame
    dat <- data.frame()
          
    # for each file in id, append (monitor id,# complete cases)
    for (i in id) {
        # create subset check on complete cases
        good <- complete.cases(data.frame(read.csv(files[i])))
        # append i & count of TRUE cases in good tuple
        dat <- rbind(dat,c(i,sum(good, na.rm=TRUE)))
    }
    
    # label column names for data frame
    names(dat)[1] <- "id"
    names(dat)[2] <- "nobs"
    
    # return data frame w/ (ID | Complete cases) columns
    dat
}
