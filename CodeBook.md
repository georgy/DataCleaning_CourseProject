# Course Project dataset

This dataset is based on:
```
Human Activity Recognition Using Smartphones Dataset
Version 1.0
```
Dataset was downloaded from [this link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). Use file dataset.zip.sha1 to validate the checksum of the dataset `sha1sum -c dataset.zip.sha1`.

## Main dataset
Main dataset (dataset.txt) is produced by combining training and testing datasets from the HAR dataset. Activity variable and subject variable are added to the dataset.
* Total of 10299 observations are produced
* Activity is preseted as string from following set (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
* Subject is presetned as numerical id (from 1 to 30 inclusive)
* Other 66 variables come from HAR dataset. For each measurement in original dataset mean and std variables are included. The naming follows the format of the original dataset with mean() replaced by Mean and std() replaced by Std 

```
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

The set of variables that were estimated from these signals are: 

Mean: Mean value
Std: Standard deviation
```
* Avaliable variables are:
```
"tBodyAccMeanX"        "tBodyAccMeanY"        "tBodyAccMeanZ"        "tBodyAccStdX"         "tBodyAccStdY"        
"tBodyAccStdZ"         "tGravityAccMeanX"     "tGravityAccMeanY"     "tGravityAccMeanZ"     "tGravityAccStdX"     
"tGravityAccStdY"      "tGravityAccStdZ"      "tBodyAccJerkMeanX"    "tBodyAccJerkMeanY"    "tBodyAccJerkMeanZ"   
"tBodyAccJerkStdX"     "tBodyAccJerkStdY"     "tBodyAccJerkStdZ"     "tBodyGyroMeanX"       "tBodyGyroMeanY"      
"tBodyGyroMeanZ"       "tBodyGyroStdX"        "tBodyGyroStdY"        "tBodyGyroStdZ"        "tBodyGyroJerkMeanX"  
"tBodyGyroJerkMeanY"   "tBodyGyroJerkMeanZ"   "tBodyGyroJerkStdX"    "tBodyGyroJerkStdY"    "tBodyGyroJerkStdZ"   
"tBodyAccMagMean"      "tBodyAccMagStd"       "tGravityAccMagMean"   "tGravityAccMagStd"    "tBodyAccJerkMagMean" 
"tBodyAccJerkMagStd"   "tBodyGyroMagMean"     "tBodyGyroMagStd"      "tBodyGyroJerkMagMean" "tBodyGyroJerkMagStd" 
"fBodyAccMeanX"        "fBodyAccMeanY"        "fBodyAccMeanZ"        "fBodyAccStdX"         "fBodyAccStdY"        
"fBodyAccStdZ"         "fBodyAccJerkMeanX"    "fBodyAccJerkMeanY"    "fBodyAccJerkMeanZ"    "fBodyAccJerkStdX"    
"fBodyAccJerkStdY"     "fBodyAccJerkStdZ"     "fBodyGyroMeanX"       "fBodyGyroMeanY"       "fBodyGyroMeanZ"      
"fBodyGyroStdX"        "fBodyGyroStdY"        "fBodyGyroStdZ"        "fBodyAccMagMean"      "fBodyAccMagStd"      
"fBodyAccJerkMagMean"  "fBodyAccJerkMagStd"   "fBodyGyroMagMean"     "fBodyGyroMagStd"      "fBodyGyroJerkMagMean"
"fBodyGyroJerkMagStd"
```

## Aggregate dataset
Aggregate dataset (dataset_mean.txt) is produced by taking a mean of all variables grouped by subject and activity. With total of 6 activities and 30 subjects 180 observations is produced.
