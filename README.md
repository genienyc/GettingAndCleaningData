# GettingAndCleaningData
Getting and Cleaning Data Course Project

This is the project assignment for the Getting and Cleaning Data Course.  This project make use of data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here is the link to the complete dataset as supplied by this project assignment: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The dataset being used for this project are as follows -

*  'features.txt': List of all features.
*  'activity_labels.txt': Links the class labels with their activity name. There are 6 different activities
*  'X_train.txt': Training set.
*  'y_train.txt': Activity engaged in the Training set
*  'X_test.txt': Test set.
*  'y_test.txt': Activity engaged in the Test set
*  'subject_train.txt': Each row identifies the subject in the Training set who performed the activity for each window sample. Its range is from 1 to 30
*  'subject_test.txt': Each row identifies the subject in the Test set who performed the activity for each window sample. Its range is from 1 to 30

These eight data files were combined, filter, and re-organized using the run_analysis.R which performs the following:  

1. Load the dataset
2. Name the variables for y_test, y_train, subject_train, subject_test, and activity labels. Replace the non-descript column names on xtest and xtrain with the value listed in the feature.txt
3.  Combine the respective Subjects and Activity IDs with the test and train data set
4.  Combine the test and train data set to form one dataset.
5.  Add the full activity name into the dataset 
6.  Extract only the variables on the mean and standard deviation for each measurement as specified by the project assignment
7.  Compute the average for each variables for each subject and activity
8.  Export this tidy data into a new .txt file.

This tidy data contains 180 observations and 68 variables.  Here are the new variables in the output- 

* subject  
      _The IDs of the 30 subjects participated in the experiment_
      _from 1 to 30_

* activity  
      _The 6 activities that the subjects performed:_
      * Laying
      * Standing
      * Sitting
      * Walking
      * Walking_Upstairs
      * Walking_Downstairs


  __Columns 3 to 68 are the average measurement for each subject and activity-__
* tBodyAcc.mean...X  
* tBodyAcc.mean...Y  
* tBodyAcc.mean...Z  
* tGravityAcc.mean...X  
* tGravityAcc.mean...Y  
* tGravityAcc.mean...Z  
* tBodyAccJerk.mean...X  
* tBodyAccJerk.mean...Y  
* tBodyAccJerk.mean...Z  
* tBodyGyro.mean...X  
* tBodyGyro.mean...Y  
* tBodyGyro.mean...Z  
* tBodyGyroJerk.mean...X  
* tBodyGyroJerk.mean...Y  
* tBodyGyroJerk.mean...Z  
* tBodyAccMag.mean..  
* tGravityAccMag.mean..  
* tBodyAccJerkMag.mean..  
* tBodyGyroMag.mean..  
* tBodyGyroJerkMag.mean..  
* fBodyAcc.mean...X  
* fBodyAcc.mean...Y  
* fBodyAcc.mean...Z  
* fBodyAccJerk.mean...X  
* fBodyAccJerk.mean...Y  
* fBodyAccJerk.mean...Z  
* fBodyGyro.mean...X  
* fBodyGyro.mean...Y  
* fBodyGyro.mean...Z  
* fBodyAccMag.mean..  
* fBodyBodyAccJerkMag.mean..  
* fBodyBodyGyroMag.mean..  
* fBodyBodyGyroJerkMag.mean..  
* tBodyAcc.std...X  
* tBodyAcc.std...Y  
* tBodyAcc.std...Z  
* tGravityAcc.std...X  
* tGravityAcc.std...Y  
* tGravityAcc.std...Z  
* tBodyAccJerk.std...X  
* tBodyAccJerk.std...Y  
* tBodyAccJerk.std...Z  
* tBodyGyro.std...X  
* tBodyGyro.std...Y  
* tBodyGyro.std...Z  
* tBodyGyroJerk.std...X  
* tBodyGyroJerk.std...Y  
* tBodyGyroJerk.std...Z  
* tBodyAccMag.std..  
* tGravityAccMag.std..  
* tBodyAccJerkMag.std..  
* tBodyGyroMag.std..  
* tBodyGyroJerkMag.std..  
* fBodyAcc.std...X  
* fBodyAcc.std...Y  
* fBodyAcc.std...Z  
* fBodyAccJerk.std...X  
* fBodyAccJerk.std...Y  
* fBodyAccJerk.std...Z  
* fBodyGyro.std...X  
* fBodyGyro.std...Y  
* fBodyGyro.std...Z  
* fBodyAccMag.std..  
* fBodyBodyAccJerkMag.std..  
* fBodyBodyGyroMag.std..  
* fBodyBodyGyroJerkMag.std..  
