# run_analysis.R
#
# Assignment for Getting and Cleaning Data
#

# Source and data file information.
kSourceURL<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
kCompressedFile<-"UCI HAR Dataset.zip"
kDataDir<-"UCI HAR Dataset"
kOutputDir<-"Output Dataset"

# Download and/or uncompress source data set as necessary.
if (!file.exists(kDataDir)) {
    if (!file.exists(kCompressedFile)) {
        cat("Compressed source file ", kCompressedFile, "missing, downloading from ", kSourceURL, "...")
        download.file(kSourceURL, kCompressedFile, quiet=TRUE, method="curl")
        cat("complete\n")
    } else {
        cat("Using existing compressed source file", kCompressedFile,"\n")
    }
    cat ("Uncompressing source file", kCompressedFile, "to", kDataDir, "...")
    unzip(kCompressedFile)
    cat ("complete\n")
} else {
    cat("Using existing data directory", kDataDir, "\n")
}

if (!file.exists(kOutputDir)) {
    dir.create(kOutputDir)
}
