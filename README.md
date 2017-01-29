# Getting and Cleaning Data: Course Project

This repo contains submission for Course Project for Getting and Cleaning Data course on coursera.org. The main script is called `run_analysis.R`. When run for the first time it will attempt to download [the dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). If everything works as expected two files will be produced in the working directory

* `dataset.txt` - the version of the dataset that combines test and traning parts of the original dataset with only mean and std variables included
* `dataset_mean.txt` - aggregate of the previous dataset with mean of all variables grouped by activity and subject.

Have fun!
