## Read the X train data set
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)

## Read the features data set
features <- read.table("./UCI HAR Dataset/features.txt", header = FALSE)

## Assign the column names to X train data set 
colnames(x_train) <- features[,2]

## Read the subject train data set
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)

## Rename column name
names(subject_train) <- "subject"

## Read the y train data set
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE)

## Rename column name
names(y_train) <- "y"

## Combine subject, X and y train data sets.
train_data <- cbind(subject_train, x_train, y_train)


## Read the X train data set
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)

## Assign the column names to X test data set 
colnames(x_test) <- features[,2]

## Read the subject test data set
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)

## Rename column name
names(subject_test) <- "subject"

## Read the y test data set
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE)

## Rename column name
names(y_test) <- "y"

## Combine subject, X and y test data sets.
test_data <- cbind(subject_test, x_test, y_test)

## Merge train and test data sets
data <- merge(train_data, test_data, by.x = "subject", by.y = "subject", all = TRUE)

## Write the tidy data set
write.table(data,"tidy_data_result.txt", row.names = FALSE)

