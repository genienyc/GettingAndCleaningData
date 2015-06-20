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
8.  Export this tidy data into a new "tidy.txt" file.

The final tidy data contains 180 observations and 68 variables.  See the Code book for the full list of variables.
