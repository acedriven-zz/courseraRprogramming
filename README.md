# Coursera R Programming Repository
This repository contains the various R scripts I've created for the R programming course on Coursera. Here's a list of files in this repo:

## Assignment 1
- all files use the specdata.zip dataset
- pollutantmean.R contains a function that calculates the mean of a pollutant (sulfate or nitrate) across a specified list of monitors. The function takes three arguments: 'directory', 'pollutant', and 'id'. Given a vector monitor ID numbers, 'pollutantmean' reads that monitors' particulate matter data from the directory specified in the 'directory' argument and returns the mean of the pollutant across all of the monitors, ignoring any missing values coded as NA.
- complete.R contains a function that reads a directory full of files and reports the number of completely observed cases in each data file. The function returns a data frame where the first column is the name of the file and the second column is the number of complete cases.
- corr.R contains a function that takes a directory of data files and a threshold for complete cases and calculates the correlation between sulfate and nitrate for monitor locations where the number of completely observed cases (on all variables) is greater than the threshold. The function returns a vector of correlations for the monitors that meet the threshold requirement. If no monitors meet the threshold requirement, then the function will return a numeric vector of length 0.
