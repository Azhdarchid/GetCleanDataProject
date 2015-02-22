# Load requirements
library(plyr)

# Read all relevant data
xTestData <- read.table("test/X_test.txt")
yTestData <- read.table("test/y_test.txt")
subjectTestData <- read.table("test/subject_test.txt")
xTrainData <- read.table("train/X_train.txt")
yTrainData <- read.table("train/y_train.txt")
subjectTrainData <- read.table("train/subject_train.txt")

# Merge data sets
xDataMerged <- rbind(xTestData, xTrainData)
yDataMerged <- rbind(yTestData, yTrainData)
subjectDataMerged <- rbind(subjectTestData, subjectTrainData)

# Correct all column names
meanSTD <- read.table("features.txt")[,2]
names(xDataMerged) = meanSTD
names(yDataMerged) <- "Activity"
names(subjectDataMerged) = "Subject"

# Extract measurements for xData
extractor <- grepl("mean|std", meanSTD)
xDataMeasures <- xDataMerged[, extractor]

# Correct ydata activity labels

activityLabels <- read.table("activity_labels.txt")
yDataMerged[, 1] <- activityLabels[yDataMerged[, 1], 2]


# Merge all data and write .txt file for cleaned data

absoluteData <- cbind(xDataMerged, yDataMerged, subjectDataMerged)
tidyData <- ddply(absoluteData, .(Subject, Activity), function(x) colMeans(x[, 1:66]))

write.table(tidyData, "tidyData.txt", row.name=FALSE, sep="  |  ")