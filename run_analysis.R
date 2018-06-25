## Load reshape2 library for the melt and dcast functions.
library(reshape2)

## Download and unzip the dataset only if not already present.
destFile <- file.path(getwd(), "UCI_HAR_Dataset.zip")

if (!file.exists(destFile)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileURL, destFile, method = "curl")
}  
if (!file.exists("UCI HAR Dataset")) { 
  unzip(destFile)
}

## Read in activity labels and features.
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
activityLabels[,2] <- as.character(activityLabels[,2])
features <- read.table("UCI HAR Dataset/features.txt")
features[,2] <- as.character(features[,2])

## Take only the mean and standard deviation data we need.
neededFeatures <- grep(".*mean.*|.*std.*", features[,2])
neededFeatures.names <- features[neededFeatures,2]
neededFeatures.names = gsub("-mean", "Mean", neededFeatures.names)
neededFeatures.names = gsub("-std", "StandardDeviation", neededFeatures.names)
neededFeatures.names = gsub("^t", "time", neededFeatures.names)
neededFeatures.names = gsub("^f", "frequency", neededFeatures.names)
neededFeatures.names = gsub("Mag", "Magnitude", neededFeatures.names)
neededFeatures.names <- gsub("[-()]", "", neededFeatures.names)


## Load each segment of the train and test datasets, then use cbind to combine them each into a datatable.
dtTrain <- read.table("UCI HAR Dataset/train/X_train.txt")[neededFeatures]
trainActivities <- read.table("UCI HAR Dataset/train/Y_train.txt")
trainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
dtTrain <- cbind(trainSubjects, trainActivities, dtTrain)

dtTest <- read.table("UCI HAR Dataset/test/X_test.txt")[neededFeatures]
testActivities <- read.table("UCI HAR Dataset/test/Y_test.txt")
testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
dtTest <- cbind(testSubjects, testActivities, dtTest)

## Merge both train and test datasets and apply labels
mergedData <- rbind(dtTrain, dtTest)
colnames(mergedData) <- c("subject", "activity", neededFeatures.names)

## Factorize activities and subjects
mergedData$activity <- factor(mergedData$activity, levels = activityLabels[,1], labels = activityLabels[,2])
mergedData$subject <- as.factor(mergedData$subject)

## Melt merged dataset then create means datatable for tidy dataset
mergedData.melt <- melt(mergedData, id = c("subject", "activity"))
mergedData.mean <- dcast(mergedData.melt, subject + activity ~ variable, mean)

## Write tidy dataset
write.table(mergedData.mean, "tidy.txt", row.names = FALSE, quote = FALSE)

## Read tidy dataset back in and use View to display in a readable format
tidyData <- read.table("tidy.txt", header = TRUE)
View(tidyData)