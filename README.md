Course Project for Getting and Cleaning Data
=============================================

Script: run_analysis.R

The script assumes the existence of UCI HAR Dataset directory containing the raw data that was obtained from  
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

####The following files used as input:
* 'features.txt': List of all features.
* 'activity_labels.txt': Links the class labels with their activity name.
* 'train/X_train.txt': Training set.
* 'train/y_train.txt': Training labels.
* 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
* 'test/X_test.txt': Test set.
* 'test/y_test.txt': Test labels.
* 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

The script performs the following steps.

####Merge the training and test sets to create one data set
* Read X_test.txt, Y_test.txt, subject_test.txt
* Add activity_index column based on Y_test.txt 
* Add subject_number column based on subject_test.txt
* Read X_training.txt, Y_training.txt, subject_train.txt
* Add activity_index column based on Y_training.txt 
* Add subject_number column based on subject_train.txt
* Merge the test and training data using rbind

####Label the combined data set with descriptive variable names
* Read features.txt
* Transform the labels by 1. stripping special characters 2. expand t to time and f to frequency 3. strip extra body from some of the magnitude variable (tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag)
* Label the columns using transformed labels

####Extract the measurements on the mean and standard deviation for each measurement
* Identify column numbers with mean and std for each signal  
>121-126 tBodyGyro-XYZ  
>161-166 tBodyGyroJerk-XYZ  
>201-202 tBodyAccMag  
>214-215 tGravityAccMag  
>227-228 tBodyAccJerkMag  
>240-241 tBodyGyroMag  
>253-254 tBodyGyroJerkMag  
>266-271 fBodyAcc-XYZ  
>345-350 fBodyAccJerk-XYZ  
>424-429 fBodyGyro-XYZ  
>503-504 fBodyAccMag  
>516-517 fBodyAccJerkMag  
>529-530 fBodyGyroMag  
>542-543 fBodyGyroJerkMag  

####Use descriptive activity names to name the activites in the data set
* Read activity_labels.txt
* Merge labels with the activity_index column to create the activity column containing the descriptive names
 

####Creates a tidy data set with the average of each variable for each activity
* Use ddply to group and apply the mean function
* The tidy data set is in the res variable after the script executes
* The tidy data set was written to the file tidydata.txt using write.table(res,"tidydata.txt",row.names=FALSE)
