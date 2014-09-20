Code Book for tidy data set created as part of course project
-------------------------------------------------------------

####Data Set Information - Study Design
Data was collected from the accelerometers from the Samsung Galaxy S smartphone.
Details on how this data was collected can be found here  
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

####Description of activity data
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ  
tGravityAcc-XYZ  
tBodyAccJerk-XYZ  
tBodyGyro-XYZ  
tBodyGyroJerk-XYZ  
tBodyAccMag  
tGravityAccMag  
tBodyAccJerkMag  
tBodyGyroMag  
tBodyGyroJerkMag  
fBodyAcc-XYZ  
fBodyAccJerk-XYZ  
fBodyGyro-XYZ  
fBodyAccMag  
fBodyAccJerkMag  
fBodyGyroMag  
fBodyGyroJerkMag  

The set of variables that were estimated from these signals and used to create this data set are: 

mean(): Mean value  
std(): Standard deviation  

#####Transformations
Data from both test and train activity was merged and then summarized  
* For each signal, the mean value and the standard deviation are considered
* The data is then grouped by subject and activity and summarized by taking the average of each variable


#####Description of Tidy Data Set
* Data consists of 180 rows and 68 columns
* This represents 30 subjects performing 6 activities
* Each row represents for each subject and activity pair, the average for each variable

#####Code Book
subject_number = Which subject performed the activity, these are anonymous and represented by the numbers 1-30  
activity = activity performed, WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING  
tBodyAcc-mean()-X = The time body acceleration signal mean in the X direction  
tBodyAcc-mean()-Y = The time body acceleration signal mean in the Y direction  
tBodyAcc-mean()-Z = The time body acceleration signal mean in the Z direction  
tBodyAcc-std()-X = The time body acceleration signal standard deviation in the X direction   
tBodyAcc-std()-Y = The time body acceleration signal standard deviation in the Y direction  
tBodyAcc-std()-Z = The time body acceleration signal standard deviation in the Z direction  
tGravityAcc-mean()-X = The time gravity acceleration signal mean in the X direction  
tGravityAcc-mean()-Y = The time gravity acceleration signal mean in the Y direction  
tGravityAcc-mean()-Z = The time gravity acceleration signal mean in the Z direction  
tGravityAcc-std()-X = The time gravity acceleration signal standard deviation in the X direction  
tGravityAcc-std()-Y = The time gravity acceleration signal standard deviation in the Y direction  
tGravityAcc-std()-Z = The time gravity acceleration signal standard deviation in the Z direction  
tBodyAccJerk-mean()-X = The time body acceleration jerk signal mean in the X direction  
tBodyAccJerk-mean()-Y = The time body acceleration jerk signal mean in the Y direction  
tBodyAccJerk-mean()-Z = The time body acceleration jerk signal mean in the Z direction  
tBodyAccJerk-std()-X" "tBodyAccJerk-std()-Y" "tBodyAccJerk-std()-Z" "tBodyGyro-mean()-X" "tBodyGyro-mean()-Y" "tBodyGyro-mean()-Z" "tBodyGyro-std()-X" "tBodyGyro-std()-Y" "tBodyGyro-std()-Z" "tBodyGyroJerk-mean()-X" "tBodyGyroJerk-mean()-Y" "tBodyGyroJerk-mean()-Z" "tBodyGyroJerk-std()-X" "tBodyGyroJerk-std()-Y" "tBodyGyroJerk-std()-Z" "tBodyAccMag-mean()" "tBodyAccMag-arCoeff()3" "tGravityAccMag-mean()" "tGravityAccMag-std()" "tBodyAccJerkMag-mean()" "tBodyAccJerkMag-std()" "tBodyGyroMag-mean()" "tBodyGyroMag-std()" "tBodyGyroJerkMag-mean()" "tBodyGyroJerkMag-std()" "fBodyAcc-mean()-X" "fBodyAcc-mean()-Y" "fBodyAcc-mean()-Z" "fBodyAcc-std()-X" "fBodyAcc-std()-Y" "fBodyAcc-std()-Z" "fBodyAccJerk-mean()-X" "fBodyAccJerk-mean()-Y" "fBodyAccJerk-mean()-Z" "fBodyAccJerk-std()-X" "fBodyAccJerk-std()-Y" "fBodyAccJerk-std()-Z" "fBodyGyro-mean()-X" "fBodyGyro-mean()-Y" "fBodyGyro-mean()-Z" "fBodyGyro-std()-X" "fBodyGyro-std()-Y" "fBodyGyro-std()-Z" "fBodyAccMag-mean()" "fBodyAccMag-std()" "fBodyBodyAccJerkMag-mean()" "fBodyBodyAccJerkMag-std()" "fBodyBodyGyroMag-mean()" "fBodyBodyGyroMag-std()" "fBodyBodyGyroJerkMag-mean()" "fBodyBodyGyroJerkMag-std()"


