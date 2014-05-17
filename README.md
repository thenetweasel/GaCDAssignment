ReadMe
========================================================

This repository contains source and supporting files for the Getting and Cleaning Data course (5 May 2014 session) by Jeff Leek.  The course can be found at https://class.coursera.org/getdata-003.

## Assignment

1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement. 
3. Use descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names. 
5. Create a second, independent tidy data set with the average of each variable for each activity and each subject. 

## Contents

1. README.md - This file.
2. CodeBook.md - CodeBook describing transformation and output data
3. run_analysis.R - Analysis and transformation script.

## Assumptions

### Source Data

The source data can be found at:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

#### Source Data Working Directory

The source data directory is stored in the working directory as "UCI HAR Dataset".

* If the data directory "UCI HAR Dataset" is present in the working directory, it will assume the uncompressed source data is present in that directory.  
* If the data directory is missing, it will look for the compressed source file "UCI HAR Dataset.zip" and create the data directory in the working directory from the compressed source file.
* In the event both are missing, the program will attempt to download the compressed source file and uncompress it to create the data directory.

#### Output Data Working Directory

The tidy data set will be stored in the "Output Dataset" directory.

* If the output directory does not exist, the program will create it in the current working directory.

### Style Guide

Naming conventions are per https://google-styleguide.googlecode.com/svn/trunk/Rguide.xml.

