library(dplyr)

#Set working directory
setwd("C://Users/kris/Documents/GitHub/ExploratoryDataAnalysisW4")

filename <- "data.zip"

# Checking if archive already exists locally, downloads if not present.
if (!file.exists(filename)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip"
  download.file(fileURL, filename, method="curl")
}  

# Checking if file exists locally, unzipping if not
if (!file.exists("summarySCC_PM25.rds")) { 
  unzip(filename) 
}
