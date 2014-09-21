library(plyr)
library(dplyr)
## 1. Merge the training and test sets to create one data set
## Put together the test data
x_test<-read.table("./UCI HAR Dataset/test/X_test.txt")
y_test<-read.table("./UCI HAR Dataset/test/Y_test.txt")
s_test<-read.table("./UCI HAR Dataset/test/subject_test.txt")
x_test$activity_index<-y_test$V1
x_test$subject_number<-s_test$V1

## Put together the training data
x_train<-read.table("./UCI HAR Dataset/train/X_train.txt")
y_train<-read.table("./UCI HAR Dataset/train/Y_train.txt")
s_train<-read.table("./UCI HAR Dataset/train/subject_train.txt")
x_train$activity_index<-y_train$V1
x_train$subject_number<-s_train$V1

## Merge the test and training data
merge<-rbind(x_test,x_train)

##    4. Appropriately labels the data set with descriptive variable names. 
## Load the column names
f<-read.table("./UCI HAR Dataset/features.txt")
## Cleanup the names
## Strip the special characters
cleanuplabels<-gsub("[[:punct:]]", "", f$V2)
## Expand t to time
cleanuplabels<-gsub("tBody", "timeBody", cleanuplabels)
cleanuplabels<-gsub("tGravity", "timeGravity", cleanuplabels)
## Get rid of BodyBody
cleanuplabels<-gsub("fBodyBody", "fBody", cleanuplabels)
## Expand f to frequency
cleanuplabels<-gsub("fBody", "frequencyBody", cleanuplabels)
cleanuplabels<-gsub("FGravity", "frequencyGravity", cleanuplabels)

names(merge)<-c(as.character(cleanuplabels),"activity_index","subject_number")

##    2. Extracts only the measurements on the mean and standard deviation for each measurement. 
##  Column numbers with mean and std for each signal
##  1-6     tBodyAcc-XYZ
##  41-46   tGravityAcc-XYZ
##  81-86   tBodyAccJerk-XYZ
##  121-126 tBodyGyro-XYZ
##  161-166 tBodyGyroJerk-XYZ
##  201-202 tBodyAccMag
##  214-215 tGravityAccMag
##  227-228 tBodyAccJerkMag
##  240-241 tBodyGyroMag
##  253-254 tBodyGyroJerkMag
##  266-271 fBodyAcc-XYZ
##  345-350 fBodyAccJerk-XYZ
##  424-429 fBodyGyro-XYZ
##  503-504 fBodyAccMag
##  516-517 fBodyAccJerkMag
##  529-530 fBodyGyroMag
##  542-543 fBodyGyroJerkMag
##  562 activity_index
##  563 subject_number
mean_std_col<-c(1:6,41:46,81:86,121:126,161:166,201,212,214,215,227,228,240,241,253,254,266:271,345:350,424:429,503,504,516,517,529,530,542,543)
activity_subject_col<-c(562,563)

merge<-merge[,c(mean_std_col,activity_subject_col)]

##    3. Uses descriptive activity names to name the activities in the data set
##Load the descriptive activity labels
l<-read.table("./UCI HAR Dataset/activity_labels.txt")
## Add the pretty labels to y
merge$activity<-l$V2[merge$activity_index]

##    5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

dataColumns<-c(1:66)
groupColumns<-c("subject_number","activity")
res<-ddply(merge,groupColumns,function(x) colMeans(x[dataColumns]))
