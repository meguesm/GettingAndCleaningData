## General section
## ==================
## Read the features data set
features <- read.table("./UCI HAR Dataset/features.txt", header = FALSE)

## Read the activity data set
activity <- read.table("./UCI HAR Dataset/activity_labels.txt", header = FALSE, col.names = c("ActivityCode","ActivityName"))

## Train data section
## ==================
## Read the X train data set
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE, col.names = features[,2])

## Read the subject train data set
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE, col.names = "Subject")

## Read the y train data set
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE, col.names = "ActivityCode")

## Combine subject, y and x train data sets.
train_data <- cbind(subject_train, y_train, x_train)

## Test data section
## =================
## Read the X test data set
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE, col.names = features[,2])

## Read the subject test data set
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE, col.names = "Subject")

## Read the y test data set
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE, col.names = "ActivityCode")

## Combine subject, y and x test data sets.
test_data <- cbind(subject_test, y_test, x_test)

## Instructions section
## ====================
## 1. Merge the training and the test sets to create one data set
merge_data <- rbind(train_data, test_data)

## 2. Extract only the measurements on the mean and standard deviation for each measurement
subset_data <- merge_data[,grepl("Subject|ActivityCode|\\.mean\\.\\.|\\.std\\.\\.", colnames(merge_data))]

## 3. Use descriptive activity names to name the activities in the data set
data <- merge(subset_data, activity, by.x = "ActivityCode", by.y = "ActivityCode", all = TRUE)

## 4. Appropriately labels the data set with descriptive variable names
colnames(data) <- gsub("\\.", "", tolower(colnames(data)))

library(plyr)
library(dplyr)
data <- select(data, subject, activityname, 3:68)

## 5. Create a tidy data set with the average of each variable for each activity and each subject
tidy_data <- ddply(data, c("subject", "activityname"), numcolwise(mean)) %>% arrange(subject, activityname)

## Write the tidy data set in text format file
write.table(tidy_data,"tidy_data.txt", row.names = FALSE)

