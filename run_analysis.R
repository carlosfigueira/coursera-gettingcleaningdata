library(plyr)
library(dplyr)

# Downloads the datasets required for the project, if they're not yet in the local disk.
downloadDatasets <- function() {
    if (!file.exists("dataset")) {
        dir.create("dataset")
    }
    
    originalDatasetUrl = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip";
    localZipFile = "dataset/getdata-projectfiles-UCI HAR Dataset.zip"
    
    # Pick one file of the dataset to see whether it's loaded
    oneFile = "dataset/UCI HAR Dataset/activity_labels.txt"
    
    if (file.exists(oneFile)) {
        print("Dataset already in disk")
    } else {
        if (!file.exists(localZipFile)) {
            print("Downloading zip file")
            download.file(originalDatasetUrl, localZipFile, mode = "wb")
        }
        
        print("Uncompressing zip file")
        unzip(localZipFile, exdir = "dataset")
    }
}

# Loads and the subject / X / Y data from the data set and merges them into a data frame
# The data frame will have only columns related to means or standard deviations, per
# instructions in the course project.
mergeXYSubject <- function(isTrainSet) {
    basePath <- "dataset/UCI HAR Dataset/"
    subjectFile <- "test/subject_test.txt"
    activityFile <- "test/Y_test.txt"
    testSetFile <- "test/X_test.txt"
    if (isTrainSet) {
        subjectFile <- gsub("test", "train", subjectFile, fixed = TRUE)
        activityFile <- gsub("test", "train", activityFile, fixed = TRUE)
        testSetFile <- gsub("test", "train", testSetFile, fixed = TRUE)
    }

    # Read all files
    subjects = read.table(concat(basePath, subjectFile))
    activities = read.table(concat(basePath, activityFile))
    dataSet = read.table(concat(basePath, testSetFile))
    featureNames <- read.table(concat(basePath, "features.txt"))
    activityLabels <- read.table(concat(basePath, "activity_labels.txt"))
    
    # Merge subject with activity labels
    labeledActivities <- join(activities, activityLabels)
    dataFrame <- data.frame(subject = subjects[,1], activity = labeledActivities[,2])
    
    # Add columns with measurements to the data frame
    # Will only add those for means and standard deviations (item 2 in instructions)
    featureNamesChar <- as.character(featureNames[,2])
    featureNamesWithMeanOrStd <- grep("(mean\\(\\))|(std\\(\\))", featureNamesChar)
    for (i in featureNamesWithMeanOrStd) {
        featureName <- featureNamesChar[i]
        columnName = gsub("()", "", featureName, fixed = TRUE)
        columnName = gsub("-", "_", columnName, fixed = TRUE)
        dataFrame[columnName] <- dataSet[,i]
    }

    # Return the merged data frame
    dataFrame
}

# Helper function to avoid having to use 'paste' with sep = "" many times
concat <- function(x, y) {
    paste(x, y, sep = "")
}

# Loads and merges the training and test data sets into a single data frame
loadMergedSet <- function() {
    testSet <- mergeXYSubject(isTrainSet = FALSE)
    trainSet <- mergeXYSubject(isTrainSet = TRUE)
    rbind(testSet, trainSet)
}

# Averages the values of all columns (3:<last>) based on the values
# of the columns 1:2 (subject, activity)
averageActivities <- function(dataSet) {
    groupedSet <- group_by(dataSet, subject, activity)
    colNamesToSummarize <- names(dataSet)[3:length(names(dataSet))]
    summarizeExpressionColumns <- paste(paste(colNamesToSummarize, " = mean(", colNamesToSummarize, ")", sep = ""), collapse = ", ")
    summarizeExpressionFull <- paste("summary <- summarize(groupedSet, ", summarizeExpressionColumns, ")", sep = "")
    eval(parse(text = summarizeExpressionFull))
    summary
}

downloadDatasets()
mergedSet <- loadMergedSet()
setSummary <- averageActivities(mergedSet)
write.table(setSummary, file = "tidy_dataset.txt", row.names = FALSE)
