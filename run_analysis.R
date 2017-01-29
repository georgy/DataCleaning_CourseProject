
# loads dataset of a particular type(test, train)
load_dataset <- function(type, dataset_dir, features, activities) {
        # Read the X part
        ds <- read.table(
                file = file.path(dataset_dir, type, paste("X_", type, ".txt", sep = "")), 
                header = F, 
                colClasses = "numeric",
                col.names = features[, 2])
        
        # Only keep mean and std variables
        ds <- subset(ds, select=grep(pattern = ".*\\.mean\\..*|.*\\.std\\..*", names(ds)))
        
        # Add activity variable
        activity <- read.table(
                file = file.path(dataset_dir, type, paste("y_", type, ".txt", sep = "")),
                header = F,
                colClasses = "integer")
        
        # Use activity labels as values
        activity <- sapply(activity, function(x) {activities[x, 2]})
        ds <- cbind(ds, activity)
        colnames(ds)[length(names(ds))] <- "activity"
        
        # Add subject variable
        subject <- read.table(
                file = file.path(dataset_dir, type, paste("subject_", type, ".txt", sep = "")),
                header = F)      
        ds <- cbind(ds, subject)
        colnames(ds)[length(names(ds))] <- "subject"
        
        ds
}

# Download and unpack dataset
download_dataset <- function(destdir = tempdir()) {
        tempfile <- tempfile()
        download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", 
                      destfile = tempfile)
        #file.copy(from = "/home/georgy/fun/coursera/data-cleaning/dataset.zip", to = tempfile)
        unzip(tempfile, exdir = destdir)
        unlink(tempfile)
        
        destdir
}

prepare_dataset <- function() {
        dir <- getwd()
        ds_dir <- file.path(dir, "UCI HAR Dataset")
        
        if (!dir.exists(ds_dir)) {
                dir <- download_dataset(destdir = dir)
        }

        # Load all portions of dataset
        features <- read.table(
                file = file.path(ds_dir, "features.txt"), 
                stringsAsFactors = F)
        
        activities <- read.table(
                file = file.path(ds_dir, "activity_labels.txt"), 
                colClasses = c("integer", "character"),
                stringsAsFactors = F)
        
        ds <- rbind(load_dataset("train", ds_dir, features, activities), 
                    load_dataset("test", ds_dir, features, activities))
        
        # Clean up column names of the dataset
        cleanNames <- names(ds)
        cleanNames <- gsub("BodyBody", "Body", cleanNames)
        cleanNames <- gsub("mean", "Mean", cleanNames)
        cleanNames <- gsub("std", "Std", cleanNames)
        cleanNames <- gsub("\\.*", "", cleanNames)
        
        names(ds) <- cleanNames
        
        ds_mean <- aggregate(. ~ activity + subject, data = ds, FUN = mean)
        browser()
        write.table(ds, row.names = F, file = "dataset.txt")
        write.table(ds_mean, row.names = F, file = "dataset_mean.txt")
}

prepare_dataset()