#Getting and Cleaning Data Course Code Book
Code Book of the Coursera Getting and Cleaning Data Course Project

##Project Description
The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

##Study design and data processing

###Collection of the raw data
The data represent data collected from the accelerometers from the Samsung Galaxy S smartphone. The url for downloading the raw data is:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

###Notes on the original (raw) data 
A full description of the raw data is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

##Creating the tidy datafile

###Guide to create the tidy data file
1. Download the raw data file "getdata-projectfiles-UCI HAR Dataset.zip" from the above url.
2. Copy the resulting folder "UCI HAR Dataset" to the R working directory.
3. Copy the run_analysis.R to the R working directory (this file is included in the project)
4. Open R program and type the following in the command line: 
  - > source("run_analysis.R")
5. The output file is called tidy_data.txt and is located in the R working directory.

##Description of the variables in the tidy_data.txt file

###Variables
* "subject" - The ID of 30 volunteers within an age bracket of 19-48 years.
* "activityname - The name of the six activities performed by each person wearing a Samsung Galaxy S smartphone. The activities are:
 - WALKING
 - WALKING_UPSTAIRS
 - WALKING_DOWNSTAIRS
 - SITTING
 - STANDING
 - LAYING
 
###Measurement Variables
The following measurement variables are the average of the mean and standard deviation of each variable for each activity and each subject:
 
* "tbodyaccmeanx"
* "tbodyaccmeany"
* "tbodyaccmeanz"
* "tbodyaccstdx"
* "tbodyaccstdy"
* "tbodyaccstdz"
* "tgravityaccmeanx"
* "tgravityaccmeany"
* "tgravityaccmeanz"
* "tgravityaccstdx"
* "tgravityaccstdy"
* "tgravityaccstdz"
* "tbodyaccjerkmeanx"
* "tbodyaccjerkmeany"
* "tbodyaccjerkmeanz"
* "tbodyaccjerkstdx"
* "tbodyaccjerkstdy"
* "tbodyaccjerkstdz"
* "tbodygyromeanx"
* "tbodygyromeany"
* "tbodygyromeanz"
* "tbodygyrostdx"
* "tbodygyrostdy"
* "tbodygyrostdz"
* "tbodygyrojerkmeanx"
* "tbodygyrojerkmeany"
* "tbodygyrojerkmeanz"
* "tbodygyrojerkstdx"
* "tbodygyrojerkstdy"
* "tbodygyrojerkstdz"
* "tbodyaccmagmean"
* "tbodyaccmagstd"
* "tgravityaccmagmean"
* "tgravityaccmagstd"
* "tbodyaccjerkmagmean"
* "tbodyaccjerkmagstd"
* "tbodygyromagmean"
* "tbodygyromagstd"
* "tbodygyrojerkmagmean"
* "tbodygyrojerkmagstd"
* "fbodyaccmeanx"
* "fbodyaccmeany"
* "fbodyaccmeanz"
* "fbodyaccstdx"
* "fbodyaccstdy"
* "fbodyaccstdz"
* "fbodyaccjerkmeanx"
* "fbodyaccjerkmeany"
* "fbodyaccjerkmeanz"
* "fbodyaccjerkstdx"
* "fbodyaccjerkstdy"
* "fbodyaccjerkstdz"
* "fbodygyromeanx"
* "fbodygyromeany"
* "fbodygyromeanz"
* "fbodygyrostdx"
* "fbodygyrostdy"
* "fbodygyrostdz"
* "fbodyaccmagmean"
* "fbodyaccmagstd"
* "fbodybodyaccjerkmagmean"
* "fbodybodyaccjerkmagstd"
* "fbodybodygyromagmean"
* "fbodybodygyromagstd"
* "fbodybodygyrojerkmagmean"
* "fbodybodygyrojerkmagstd"

##Transformations details to produce the tidy dataset

The work was divided in 4 sections:

###General Section
* Read the features and activity labels information from the following files:
  - UCI HAR Dataset/features.txt
  - UCI HAR Dataset/activity_labels.txt

###Train data Section
* Read the X train data set, the y train data set and the subject train data set from the following files:
 - UCI HAR Dataset/train/X_train.txt
 - UCI HAR Dataset/train/y_train.txt
 - UCI HAR Dataset/train/subject_train.txt
* Combine all the train data sets into a new one called "train_data".

###Test data Section
* Read the X test data set, the y test data set and the subject test data set from the following files:
 - UCI HAR Dataset/train/X_test.txt
 - UCI HAR Dataset/train/y_test.txt
 - UCI HAR Dataset/train/subject_test.txt
* Combine all the test data sets into a new one called "test_data".

###Instructions Section
1. Merge the training and the test sets to create one data set called "merge_data".
2. Extract only the measurements on the mean and standard deviation for each measurement to the data set called "subset_data".
3. Use descriptive activity names to name the activities into a new data set called "data".
4. Appropriately labels the data set with descriptive variable names
5. Create a tidy data set called "tidy_data" with the average of each variable for each activity and each subject.



