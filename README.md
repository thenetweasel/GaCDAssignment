ReadMe
========================================================

This repository contains source and supporting files for the Getting and Cleaning Data course (5 May 2014 session) by Jeff Leek.  The course can be found at https://class.coursera.org/getdata-003.

## Assignment

1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement. 
3. Use descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names. 
5. Create a second, independent tidy data set with the average of each variable for each activity and each subject. 

Steps three and four above have been interpreted as follows per forum thread https://class.coursera.org/getdata-003/forum/thread?thread_id=55

3. Replace row entries with activity names (as provided in the data)
4. Replace column labels with more easily understood versions (as determined by us)

## Contents

1. README.md - This file.
2. CodeBook.md - CodeBook describing transformation and output data
3. run_analysis.R - Analysis and transformation script.

## Assumptions

### Completion Criteria

The completion criteria as provided by community TA David Hood in the Forum thread https://class.coursera.org/getdata-003/forum/thread?thread_id=92 is as follows:

* The explanation is as important as the script, so make sure you have the read me
* have you combined the training and test x and y into one block, given them headings, and turned the numeric activities into something easier to read. Think of it as you data files are blocks of lego and you are working out how to clip them together to make a wall.
* have you extracted some variables to do with mean and standard deviation from the full set. I am being non-specific here because in this assignment you are using you professional judgement about which variables to include and documenting your reasoning. There is no specific number of columns that is correct.
* have you explained what those variables are and your criteria for picking them in the readMe
* have you gotten the average of each variable for each combination of subject and activity and saved the data frame of this as a set of tidy data
* have you give the variables English-like descriptive names describing the activity that the sensor is measuring? (this is a slightly, or indeed very, horribly worded part of the assignment)
* remember that codebook you had to learn to use in the week 1 quiz, now it * is time to create your own describing those descriptive English named variables you decided to use. The codebook should go on github to. have you loaded up your current script, an up to date read me and the codebook to github?
* and your tidy data to coursera- Important load in a text file of the data (or at least some kind of file). Do not try and copy and paste in all your tidy data. Very, very bad things might happen to your submission. Do not experiment to find out what, just trust me on this from previous experience. Add a file like it says in the instructions. Personally, I think it is a reasonable assumption to figure that anyone doing this course is able to deal with a tab delimited text file like you get by taking your data and doing write.table().

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

