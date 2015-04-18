corr <- function(directory, threshold = 0) {
    # open all files in directory; store to files
    files <- list.files(directory, full.names=TRUE)

    # create table of complete values using complete.R
    completes <- complete(directory)
    len <- nrow(completes) # create length value for for loop
    
    # initialize numeric correlations vector
    correlations <- numeric()
    
    # for each row in completes, check if complete cases > threshold
    for (i in 1:len) {
        if (completes[i,2] > threshold) {
            dat <- data.frame(read.csv(files[i]))
            filecor <- cor(x = dat$sulfate, y = dat$nitrate, use = "complete.obs")
            correlations <- c(correlations,filecor)
        }
    }
    
    # return correlations vector
    correlations
}
