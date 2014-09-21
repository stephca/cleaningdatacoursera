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
tBodyAcc-mean()-X = The mean of the time body accelerometer acceleration signal in the X direction  
tBodyAcc-mean()-Y = The mean of the time body accelerometer acceleration signal in the Y direction  
tBodyAcc-mean()-Z = The mean of the time body accelerometer acceleration signal in the Z direction  
tBodyAcc-std()-X = The standard deviation of the time body accelerometer acceleration signal in the X direction   
tBodyAcc-std()-Y = The standard deviation of the time body accelerometer acceleration signal in the Y direction  
tBodyAcc-std()-Z = The standard deviation of the time body accelerometer acceleration signal in the Z direction  
tGravityAcc-mean()-X = The mean of the time gravity accelerometer acceleration signal in the X direction  
tGravityAcc-mean()-Y = The mean of the time gravity accelerometer acceleration signal in the Y direction  
tGravityAcc-mean()-Z = The mean of the time gravity accelerometer acceleration signal in the Z direction  
tGravityAcc-std()-X = The standard deviation of the time gravity accelerometer acceleration signal in the X direction  
tGravityAcc-std()-Y = The standard deviation of the time gravity accelerometer acceleration signal in the Y direction  
tGravityAcc-std()-Z = The standard deviation of the time gravity accelerometer acceleration signal in the Z direction  
tBodyAccJerk-mean()-X = The mean of the time body accelerometer acceleration jerk signal in the X direction  
tBodyAccJerk-mean()-Y = The mean of the time body accelerometer acceleration jerk signal in the Y direction  
tBodyAccJerk-mean()-Z = The mean of the time body accelerometer acceleration jerk signal in the Z direction  
tBodyAccJerk-std()-X = The standard deviation of the time body accelerometer acceleration jerk signal in the X direction  
tBodyAccJerk-std()-Y = The standard deviation of the time body accelerometer acceleration jerk signal in the Y direction  
tBodyAccJerk-std()-Z = The standard deviation of the time body accelerometer acceleration jerk signal in the Z direction  
tBodyGyro-mean()-X = The mean of the time body gyroscope acceleration signal in the X direction  
tBodyGyro-mean()-Y = The mean of the time body gyroscope acceleration signal in the Y direction  
tBodyGyro-mean()-Z = The mean of the time body gyroscope acceleration signal in the Z direction  
tBodyGyro-std()-X = The standard deviation of the time body gyroscope acceleration signal in the X direction  
tBodyGyro-std()-Y = The standard deviation of the time body gyroscope acceleration signal in the Y direction  
tBodyGyro-std()-Z = The standard deviation of the time body gyroscope acceleration signal in the Z direction  
tBodyGyroJerk-mean()-X = The mean of the time body gyroscope acceleration jerk signal mean in the X direction 
tBodyGyroJerk-mean()-Y = The mean of the time body gyroscope acceleration jerk signal mean in the Y direction 
tBodyGyroJerk-mean()-Z = The mean of the time body gyroscope acceleration jerk signal mean in the Z direction 
tBodyGyroJerk-std()-X = The standard deviation of the time body gyroscope acceleration jerk signal in the X direction 
tBodyGyroJerk-std()-Y = The standard deviation of the time body gyroscope acceleration jerk signal in the Y direction 
tBodyGyroJerk-std()-Z = The standard deviation of the time body gyroscope acceleration jerk signal in the Z direction 
tBodyAccMag-mean() = The mean of the time body accelerometer acceleration magnitude  
tBodyAccMag-std() = The standard deviation of the time body accelerometer acceleration magnitude  
tGravityAccMag-mean() = The mean of the time gravity accelerometer acceleration magnitude 
tGravityAccMag-std() = The standard deviation of the time gravity accelerometer acceleration magnitude  
tBodyAccJerkMag-mean() = The mean of the time body accelerometer acceleration jerk magnitude
tBodyAccJerkMag-std() = The standard deviation of the time body accelerometer acceleration jerk magnitude
tBodyGyroMag-mean() = The mean of the time body gyroscope acceleration magnitude
tBodyGyroMag-std()= The standard deviation of the time body gyroscope acceleration magnitude
tBodyGyroJerkMag-mean() = The mean of the time body gyroscope acceleration jerk magnitude
tBodyGyroJerkMag-std() = The standard deviation of the time body gyroscope acceleration jerk magnitude  
fBodyAcc-mean()-X = The mean of the frequency domain body accelerometer acceleration signal in the X direction  
fBodyAcc-mean()-Y = The mean of the frequency domain body accelerometer acceleration signal in the Y direction  
fBodyAcc-mean()-Z = The mean of the frequency domain body accelerometer acceleration signal in the Z direction  
fBodyAcc-std()-X = The standard deviation of the frequency domain body accelerometer acceleration signal in the X direction  
fBodyAcc-std()-Y= The standard deviation of the frequency domain body accelerometer acceleration signal in the Y direction  
fBodyAcc-std()-Z= The standard deviation of the frequency domain body accelerometer acceleration signal in the Z direction  
fBodyAccJerk-mean()-X = The mean of the frequency domain body accelerometer acceleration jerk signal in the X direction   
fBodyAccJerk-mean()-Y = The mean of the frequency domain body accelerometer acceleration jerk signal in the Y direction   
fBodyAccJerk-mean()-Z = The mean of the frequency domain body accelerometer acceleration jerk signal in the Z direction   
fBodyAccJerk-std()-X = The standard deviation of the frequency domain body accelerometer acceleration jerk signal in the X direction   
fBodyAccJerk-std()-Y = The standard deviation of the frequency domain body accelerometer acceleration jerk signal in the Y direction   
fBodyAccJerk-std()-Z = The standard deviation of the frequency domain body accelerometer acceleration jerk signal in the Z direction   
fBodyGyro-mean()-X = The mean of the frequency domain body gyroscope acceleration signal in the X direction 
fBodyGyro-mean()-Y = The mean of the frequency domain body gyroscope acceleration signal in the Y direction 
fBodyGyro-mean()-Z = The mean of the frequency domain body gyroscope acceleration signal in the Z direction 
fBodyGyro-std()-X = The standard deviation of the frequency domain body gyroscope acceleration signal in the X direction 
fBodyGyro-std()-Y = The standard deviation of the frequency domain body gyroscope acceleration signal in the Y direction 
fBodyGyro-std()-Z = The standard deviation of the frequency domain body gyroscope acceleration signal in the Z direction 
fBodyAccMag-mean() = The mean of the frequency domain body accelerometer acceleration magnitude
fBodyAccMag-std() = The standard deviation of the frequency domain body accelerometer acceleration magnitude
fBodyBodyAccJerkMag-mean() = The mean of the frequency domain body accelerometer acceleration jerk magnitude
fBodyBodyAccJerkMag-std() = The standard deviation of the frequency domain body accelerometer acceleration jerk magnitude
fBodyBodyGyroMag-mean() = The mean of the frequency domain body gyroscope acceleration magnitude  
fBodyBodyGyroMag-std() = The standard deviation of the frequency domain body gyroscope acceleration magnitude  
fBodyBodyGyroJerkMag-mean() = The mean of the frequency domain body gyroscope acceleration jerk magnitude  
fBodyBodyGyroJerkMag-std() = The standard deviation of the frequency domain body gyroscope acceleration jerk magnitude  


