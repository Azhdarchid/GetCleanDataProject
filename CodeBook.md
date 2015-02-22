##GetCleanDataProject

D.T.

### Document Description

In-depth information about the dataset and variables used in and the analysis script written for Johns Hopkins' Getting and Cleaning Data couse class project.

###Source Data


###Data Set Information

From the dataset information:

"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

#####For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

###Further information/instructions

#### 1. Load requirements

Loads any and all packages required to run the script into RStudio.

#### 2. Read all relevant data
Reads all necessary data text files into R with variable names as seen below:

xTestData <- X_test.txt

yTestData <- y_test.txt

subjectTestData <- subject_test.txt

xTrainData <- X_train.txt

yTrainData <- y_train.txt

subjectTrainData <- subject_train.txt

#### 3. Merge data sets

Merges x, y and subject Test and Train datasets into three sets: xDataMerged, yDataMerged, subjectDataMerged

#### 4. Correct all column names

Correct column names for all data sets (read features.txt into the meanSTD variable in order to accomplish this for xDataMerged).

#### 5. Extract measurements for xData

User grepl to extract only mean and standard deviation measurements for xDataMerged.

#### 6. Correct ydata activity labels

Read activity_labels.txt and use information within to reassign activity labels in the y data set.

#### 7. Merge all data and write .txt file for cleaned data

Merge variables xDataMerged, yDataMerged, subjectDataMerged into sinvle variable absoluteData and use to write tidied .txt file for submission.


