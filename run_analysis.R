## Getting and Cleaning Data Course Project
## This R script does the following - 
## - Merges the training and the test sets to create one data set.
## - Extracts only the measurements on the mean and standard deviation for each measurement. 
## - Uses descriptive activity names to name the activities in the data set
## - Appropriately labels the data set with descriptive variable names. 
## - creates a second, independent tidy data set with the average of each variable 
##   for each activity and each subject.


require(dplyr)


## load datasets
features <- read.table("features.txt")
actlabels<- read.table("activity_labels.txt")
subjecttest <- read.table("subject_test.txt")
subjecttrain <- read.table("subject_train.txt")
xtrain <- read.table("X_train.txt")
xtest <- read.table("X_test.txt")
ytrain <- read.table("y_train.txt")
ytest <- read.table("y_test.txt")

## naming variables for each objects
colnames(xtest) <- features[,2]  #Replace non-descript columnn names on xtest 
                                 #with the value listed under the 2nd column of "feature"
colnames(xtrain) <- features[,2] #Replace non-descript columnn names on xtrain 
                                 #with the value listed under the 2nd column of "feature"
colnames(actlabels) <- c("act","activity") #Add column names to actlabels
colnames(ytest) <- "act" #Add column name to ytest
colnames(ytrain) <- "act" #Add column name to ytrain
colnames(subjecttest) <- "subject" #Add column name to subjecttest
colnames(subjecttrain) <- "subject" #Add column name to subjecttrain

## combining data
test <- cbind(subjecttest,ytest,xtest)  #combine subject, activity, and 
                                        #measurements variables to the test group
train <- cbind(subjecttrain,ytrain,xtrain) #combine subject, activity, and 
                                           #measurements variables to the train group
combined <- rbind(train,test) #append train and test groups to one table
combined <- inner_join(combined,actlabels, by = "act") #merge "combined" and "actlabels" 
                                                       #to include the full activity labels
                                                       #in dataset

## Clean up duplicate variable names.
validcolnames <- make.names(names=names(combined), unique = TRUE, allow = TRUE)
colnames(combined) <- validcolnames

## Extract only the variables on the mean and standard deviation for each measurement.
combselect <- select(combined,subject, activity, contains(".mean."), contains(".std"))

## compute the average for each variable for each activity and each subject
tidydata <- combselect %>% group_by(subject, activity) %>% summarise_each(funs(mean))

## export tidy data in a new .txt file
write.table(tidydata, "tidydata.txt", row.name = FALSE)


