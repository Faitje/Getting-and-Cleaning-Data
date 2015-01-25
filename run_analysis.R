# This script makes the original data tidy

# 1. Merges the training and the test sets to create one data set.
## Download data
if(!require(downloader)){
        install.packages("downloader") 
}
library(downloader)

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download(url, dest="dataset.zip" mode = "wb") 
unzip ("dataset.zip",exdir = "./")

## read text files
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE)  
X_test <- read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE)
Y_test <- read.table("UCI HAR Dataset/test/Y_test.txt", header = FALSE)

subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE)
X_train <- read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE)
Y_train <- read.table("UCI HAR Dataset/train/Y_train.txt", header = FALSE)

## Column bind test and train files
test <- cbind(subject_test, X_test, Y_test)
train <- cbind(subject_train, X_train, Y_train)

## Row bind test and train files
complete <- rbind(test, train)

# 3. Uses descriptive activity names to name the activities in the data set
activity <- read.table("UCI HAR Dataset/activity_labels.txt", header = FALSE)
complete[[563]] <- factor(complete[[563]],levels=activity[[1]],labels=activity[[2]])

# 4. Appropriately labels the data set with descriptive variable names.
features <- read.table("UCI HAR Dataset/features.txt", header = FALSE)
featureName <- features[[2]]
featureNameClean <- gsub("[[:punct:]]", "", featureName)

names(complete) <- c("subject", featureNameClean, "activity")

# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
mean.std <- complete[,grep("subject|mean(X|Y|Z|$)|std|activity", colnames(complete))]

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
if(!require(reshape)){
        install.packages("reshape") 
}
library(reshape)

molten <- melt(mean.std, id.vars = c("activity", "subject"))
tidy <- cast(activity + subject ~ variable, data = molten, fun = mean)

# Write the dataset to .txt
write.table(tidy, "tidy.txt", row.name=FALSE)

View(tidy) 
