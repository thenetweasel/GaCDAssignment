# run_analysis.R
#
# Assignment for Getting and Cleaning Data
#

# Source and data file information.
sourceURL<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
compressedFile<-"UCI HAR Dataset.zip"
dataDir<-"UCI HAR Dataset"
outputDir<-"Output Dataset"

# Download and/or uncompress source data set as necessary.
if (!file.exists(dataDir)) {
    if (!file.exists(compressedFile)) {
        cat("Compressed source file ", compressedFile, "missing, downloading from ", sourceURL, "...")
        download.file(sourceURL, compressedFile, quiet=TRUE, method="curl")
        cat("complete\n")
    } else {
        cat("Using existing compressed source file", compressedFile,"\n")
    }
    cat ("Uncompressing source file", compressedFile, "to", dataDir, "...")
    unzip(compressedFile)
    cat ("complete\n")
} else {
    cat("Using existing data directory", dataDir, "\n")
}

if (!file.exists(outputDir)) {
    dir.create(outputDir)
}
