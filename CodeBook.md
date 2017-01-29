# Course Project dataset

This dataset is based on:
```
Human Activity Recognition Using Smartphones Dataset
Version 1.0
```
Dataset was downloaded from [this link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). Use file dataset.zip.sha1 to validate the checksum of the dataset `sha1sum -c dataset.zip.sha1`.

## Main dataset
Main dataset (dataset.txt) is produced by combining training and testing datasets from the HAR dataset. Activity variable and subject variable are added to the dataset. 
* Activity is preseted as string from following set (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
* Subject is presetned as numerical id
* Other 66 variables come from HAR dataset. For each measurement in original dataset mean and std variables are included
* Total of 10299 observations are produced

## Aggregate dataset
Aggregate dataset (dataset_mean.txt) is produced by taking a mean of all variables grouped by subject and activity. With total of 6 activities and 30 subjects 180 observations is produced.
