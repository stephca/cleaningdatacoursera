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
timeBodyAccmeanX = The mean of the time body accelerometer acceleration signal in the X direction  
timeBodyAccmeanY = The mean of the time body accelerometer acceleration signal in the Y direction  
timeBodyAccmeanZ = The mean of the time body accelerometer acceleration signal in the Z direction  
timeBodyAccstdX = The standard deviation of the time body accelerometer acceleration signal in the X direction   
timeBodyAccstdY = The standard deviation of the time body accelerometer acceleration signal in the Y direction  
timeBodyAccstdZ = The standard deviation of the time body accelerometer acceleration signal in the Z direction  
timeGravityAccmeanX = The mean of the time gravity accelerometer acceleration signal in the X direction  
timeGravityAccmeanY = The mean of the time gravity accelerometer acceleration signal in the Y direction  
timeGravityAccmeanZ = The mean of the time gravity accelerometer acceleration signal in the Z direction  
timeGravityAccstdX = The standard deviation of the time gravity accelerometer acceleration signal in the X direction  
timeGravityAccstdY = The standard deviation of the time gravity accelerometer acceleration signal in the Y direction  
timeGravityAccstdZ = The standard deviation of the time gravity accelerometer acceleration signal in the Z direction  
timeBodyAccJerkmeanX = The mean of the time body accelerometer acceleration jerk signal in the X direction  
timeBodyAccJerkmeanY = The mean of the time body accelerometer acceleration jerk signal in the Y direction  
timeBodyAccJerkmeanZ = The mean of the time body accelerometer acceleration jerk signal in the Z direction  
timeBodyAccJerkstdX = The standard deviation of the time body accelerometer acceleration jerk signal in the X direction  
timeBodyAccJerkstdY = The standard deviation of the time body accelerometer acceleration jerk signal in the Y direction  
timeBodyAccJerkstdZ = The standard deviation of the time body accelerometer acceleration jerk signal in the Z direction  
timeBodyGyromeanX = The mean of the time body gyroscope acceleration signal in the X direction  
timeBodyGyromeanY = The mean of the time body gyroscope acceleration signal in the Y direction  
timeBodyGyromeanZ = The mean of the time body gyroscope acceleration signal in the Z direction  
timeBodyGyrostdX = The standard deviation of the time body gyroscope acceleration signal in the X direction  
timeBodyGyrostdY = The standard deviation of the time body gyroscope acceleration signal in the Y direction  
timeBodyGyrostdZ = The standard deviation of the time body gyroscope acceleration signal in the Z direction  
timeBodyGyroJerkmeanX = The mean of the time body gyroscope acceleration jerk signal mean in the X direction 
timeBodyGyroJerkmeanY = The mean of the time body gyroscope acceleration jerk signal mean in the Y direction 
timeBodyGyroJerkmeanZ = The mean of the time body gyroscope acceleration jerk signal mean in the Z direction 
timeBodyGyroJerkstdX = The standard deviation of the time body gyroscope acceleration jerk signal in the X direction 
timeBodyGyroJerkstdY = The standard deviation of the time body gyroscope acceleration jerk signal in the Y direction 
timeBodyGyroJerkstdZ = The standard deviation of the time body gyroscope acceleration jerk signal in the Z direction 
timeBodyAccMagmean = The mean of the time body accelerometer acceleration magnitude  
timeBodyAccMagstd = The standard deviation of the time body accelerometer acceleration magnitude  
timeGravityAccMagmean = The mean of the time gravity accelerometer acceleration magnitude 
timeGravityAccMagstd = The standard deviation of the time gravity accelerometer acceleration magnitude  
timeBodyAccJerkMagmean = The mean of the time body accelerometer acceleration jerk magnitude
timeBodyAccJerkMagstd = The standard deviation of the time body accelerometer acceleration jerk magnitude
timeBodyGyroMagmean = The mean of the time body gyroscope acceleration magnitude
timeBodyGyroMagstd= The standard deviation of the time body gyroscope acceleration magnitude
timeBodyGyroJerkMagmean = The mean of the time body gyroscope acceleration jerk magnitude
timeBodyGyroJerkMagstd = The standard deviation of the time body gyroscope acceleration jerk magnitude  
frequencyBodyAccmeanX = The mean of the frequency domain body accelerometer acceleration signal in the X direction  
frequencyBodyAccmeanY = The mean of the frequency domain body accelerometer acceleration signal in the Y direction  
frequencyBodyAccmeanZ = The mean of the frequency domain body accelerometer acceleration signal in the Z direction  
frequencyBodyAccstdX = The standard deviation of the frequency domain body accelerometer acceleration signal in the X direction  
frequencyBodyAccstdY= The standard deviation of the frequency domain body accelerometer acceleration signal in the Y direction  
frequencyBodyAccstdZ= The standard deviation of the frequency domain body accelerometer acceleration signal in the Z direction  
frequencyBodyAccJerkmeanX = The mean of the frequency domain body accelerometer acceleration jerk signal in the X direction   
frequencyBodyAccJerkmeanY = The mean of the frequency domain body accelerometer acceleration jerk signal in the Y direction   
frequencyBodyAccJerkmeanZ = The mean of the frequency domain body accelerometer acceleration jerk signal in the Z direction   
frequencyBodyAccJerkstdX = The standard deviation of the frequency domain body accelerometer acceleration jerk signal in the X direction   
frequencyBodyAccJerkstdY = The standard deviation of the frequency domain body accelerometer acceleration jerk signal in the Y direction   
frequencyBodyAccJerkstdZ = The standard deviation of the frequency domain body accelerometer acceleration jerk signal in the Z direction   
frequencyBodyGyromeanX = The mean of the frequency domain body gyroscope acceleration signal in the X direction 
frequencyBodyGyromeanY = The mean of the frequency domain body gyroscope acceleration signal in the Y direction 
frequencyBodyGyromeanZ = The mean of the frequency domain body gyroscope acceleration signal in the Z direction 
frequencyBodyGyrostdX = The standard deviation of the frequency domain body gyroscope acceleration signal in the X direction 
frequencyBodyGyrostdY = The standard deviation of the frequency domain body gyroscope acceleration signal in the Y direction 
frequencyBodyGyrostdZ = The standard deviation of the frequency domain body gyroscope acceleration signal in the Z direction 
frequencyBodyAccMagmean = The mean of the frequency domain body accelerometer acceleration magnitude
frequencyBodyAccMagstd = The standard deviation of the frequency domain body accelerometer acceleration magnitude
frequencyBodyBodyAccJerkMagmean = The mean of the frequency domain body accelerometer acceleration jerk magnitude
frequencyBodyBodyAccJerkMagstd = The standard deviation of the frequency domain body accelerometer acceleration jerk magnitude
frequencyBodyBodyGyroMagmean = The mean of the frequency domain body gyroscope acceleration magnitude  
frequencyBodyBodyGyroMagstd = The standard deviation of the frequency domain body gyroscope acceleration magnitude  
frequencyBodyBodyGyroJerkMagmean = The mean of the frequency domain body gyroscope acceleration jerk magnitude  
frequencyBodyBodyGyroJerkMagstd = The standard deviation of the frequency domain body gyroscope acceleration jerk magnitude  


