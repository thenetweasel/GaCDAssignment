# run_analysis.R
#
# Assignment for Getting and Cleaning Data
#

library(plyr)

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

# Load the list of labels and reduce to those involving std deviation or mean.
features <- read.table("UCI HAR Dataset/features.txt", quote="\"")
interested.features.logical = grepl("-(std|mean)", features[[2]], ignore.case=TRUE) #& !grepl("gravityMean", features[[2]], ignore.case=TRUE)
activity.labels <- read.table("UCI HAR Dataset/activity_labels.txt", quote="\"")

# Read the test file and reduce to only variables we care about
test.frame.full <- read.table("UCI HAR Dataset/test/X_test.txt", quote="\"")
test.frame <- test.frame.full[,interested.features.logical]
colnames(test.frame) <- features[interested.features.logical,2]
rm(test.frame.full)

# Add the labels field
test.activities.frame <- read.table("UCI HAR Dataset/test/y_test.txt", quote="\"")
test.frame$Activity<-sapply(test.activities.frame[[1]], function (x) {activity.labels[activity.labels[[1]]==x,2]})
rm(test.activities.frame)

# Add the subject field
test.subject.frame <- read.table("UCI HAR Dataset/test/subject_test.txt", quote="\"")
test.subject<-test.subject.frame[[1]]
rm(test.subject.frame)
test.frame$Subject<-test.subject
rm(test.subject)

# Read the train file and reduce to only variables we care about
train.frame.full <- read.table("UCI HAR Dataset/train/X_train.txt", quote="\"")
train.frame <- train.frame.full[,interested.features.logical]
colnames(train.frame) <- features[interested.features.logical,2]
rm(train.frame.full)

# Add the labels field
train.activities.frame <- read.table("UCI HAR Dataset/train/y_train.txt", quote="\"")
train.frame$Activity<-lapply(train.activities.frame[[1]], function (x) {as.character(activity.labels[activity.labels[[1]]==x,2])})
rm(train.activities.frame)

# Add the subject field
train.subject.frame <- read.table("UCI HAR Dataset/train/subject_train.txt", quote="\"")
train.subject<-train.subject.frame[[1]]
rm(train.subject.frame)
train.frame$Subject<-train.subject
rm(train.subject)

# Join the tables together.
joined.frame <- join(test.frame,train.frame,by="Subject", type="full")
rm(test.frame, train.frame)

# Build the output frame.
# 
# Should be able to do this with list/matrix functions, but got lazy.
#
output.frame<-data.frame(na.omit(unique(joined.frame[,c("Subject","Activity")])))
rownames(output.frame) <- paste(output.frame[,"Subject"], output.frame[,"Activity"], sep="-")

# For each column's subject/activity combination, set the mean of the corresponding observations.
for (column in as.character(features[interested.features.logical,2])) {
  for (subject in unique(output.frame$Subject)) {
    for (activity in unique(output.frame$Activity[output.frame$Subject==subject])) {
      output.frame[output.frame$Subject==subject&output.frame$Activity==activity,column]<-mean(joined.frame[joined.frame$Subject==subject&joined.frame$Activity==activity,column])
    }
  }
}
rm(column,activity,subject)
rm(joined.frame)
rm(interested.features.logical, features, activity.labels)
#
# Translate to human readable column names of the format Summary Statistic.[Optional Dimension].Measurement
#
colnames(output.frame) <- sub("^mean\\.", 
                              "mean.", 
                              sub("^std\\.", 
                                  "stdDev.", 
                                  sub("^meanFreq\\.", 
                                      "meanFrequency.", 
                                      gsub("^(.*)-(.*)\\(\\)$", "\\2.\\1", 
                                           gsub("^(.*)-(.*)\\(\\)-(.*)$", "\\2.\\3Dimension.\\1", 
                                                colnames(output.frame), 
                                                perl=TRUE), 
                                           perl=TRUE))))
# Transformations
# ^t -> timeDomain
# ^f -> fastFourierTransformation
# Acc -> Acceleration
# Gyro -> Gyroscope
# Mag -> Magnitude

colnames(output.frame) <- sub("\\.t", ".timeDomain", colnames(output.frame))
colnames(output.frame) <- sub("\\.f", ".frequencyDomain", colnames(output.frame))
colnames(output.frame) <- sub("Acc", "Acceleration", colnames(output.frame))
colnames(output.frame) <- sub("Gyro", "Gyroscope", colnames(output.frame))
colnames(output.frame) <- sub("Mag", "Magnitude", colnames(output.frame))

#
# Write the output file, surpress the row names as they are composites of the 
#
write.csv(output.frame, "Output Dataset/UCI HAR Means TidyData.csv",row.names=FALSE)
