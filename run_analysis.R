# You should create one R script called run_analysis.R that does the following:  

# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set with the 
#    average of each variable for each activity and each subject.


# Download data from website to home directory:
# Download and unzip solution as suggested at https://www.ocf.berkeley.edu/~mikeck/?p=688 and
# http://stackoverflow.com/questions/3053833/using-r-to-download-zipped-data-file-extract-and-import-data
temp <- tempfile()
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", temp, method="curl")

# Unzip file:duplicated
unz_file <- unzip(temp, list=T)
unlink(temp)

# Look at the list of files in the unzipped folder and identify training and test data: 
unz_file$Name 

# Read test and training tables into R (comments from README):
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt") # Each row identifies the subject who performed the activity for the corresponding measurement in x_test
x_test <- read.table("UCI HAR Dataset/test/X_test.txt") # Test set - each row a measurement
y_test <- read.table("UCI HAR Dataset/test/y_test.txt") # Test labels

subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt") # Each row identifies the subject who performed the activity for the corresponding measurement in x_train
x_train <- read.table("UCI HAR Dataset/train/X_train.txt") # Training set
y_train <- read.table("UCI HAR Dataset/train/y_train.txt") # Training labels

# Read the features variable name file:
features <- read.table("UCI HAR Dataset/features.txt")

# 1. Merge the training and the test sets to create one data set:

# Have a bit of a look at the data first:
dim(subject_test)       # [1] 2947    1
head(subject_test, 10)
table(subject_test)

dim(x_test)             # [1] 2947  561
names(x_test)
dim(y_test)             # [1] 2947    1
table(y_test)

dim(subject_train)      # [1] 7352    1
dim(x_train)            # [1] 7352  561
dim(y_train)            # [1] 7352    1

dim(features)           # [1] 561   2

# According to the README, the test and training datasets (x_test and x_train) are subsets of
# a full data set with the same variables and a row per subject. So to combine them, we just 
# append the rows of test to train. 
# First though, we want to bind the subject ID column (subject_test/subject_train) 
# and the activity labels column (y_test/y_train) to the start of x_test and x_train:

# Rename columns to bind to x_test and x_train:
names(subject_test) <- "Subject"
names(subject_train) <- "Subject"
names(y_test) <- "Activity"
names(y_train) <- "Activity"
# Bind columns:
x_test_lab <- cbind(subject_test, y_test, x_test)
x_train_lab <- cbind(subject_train, y_train, x_train)

# Bind rows of x_test_lab to the bottom of rows of x_train_lab:
dat <- rbind(x_train_lab, x_test_lab)
dim(dat) # [1] 10299   563 - Yes (2947+7352 rows and 561+2 cols)
names(dat)
table(dat$Subject) # Yes, all 30.


# 4. Appropriately labels the data set with descriptive variable names. 
# This part of the question is addressed here to facilitate the extraction of mean and std 
# columns for question 2. 

# Rename columns with variable names from features.txt:
# (need to change features from a list to a character vector first, then get rid of hyphens
# to make them valid R names):
features <- as.character(features[,2])
features <- make.names(features, unique=TRUE)
names(dat)[3:563] <- features
table(duplicated(names(dat))) # No duplicated names


# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# I chose to include variables with any mention of mean or std in the name by ignoring
# the case (ignore.case=T), as the question does not specify that certain mean/std 
# measurements should be excluded. To only include those with "mean" or "std", I would 
# just use the default ignore.case=F.

dat <- dat[, c(1,2,grep("mean|std", names(dat), ignore.case=T))]
dim(dat) #[1] 10299    88



# 3. Uses descriptive activity names to name the activities in the data set

table(dat$Activity)
dat$Activity <- as.character(dat$Activity)

dat$Activity <- gsub("1", "WALKING", dat$Activity)
dat$Activity <- gsub("2", "WALKING_UPSTAIRS", dat$Activity)
dat$Activity <- gsub("3", "WALKING_DOWNSTAIRS", dat$Activity)
dat$Activity <- gsub("4", "SITTING", dat$Activity)
dat$Activity <- gsub("5", "STANDING", dat$Activity)
dat$Activity <- gsub("6", "LAYING", dat$Activity)

table(dat$Activity)



# 5. From the data set in step 4, creates a second, independent tidy data set with the 
#    average of each variable for each activity and each subject.

library(dplyr)
dat_i <- group_by(dat,Subject,Activity)
dat2 <- summarise_each(dat_i, funs(mean))
dim(dat2) # [1] 180  88

# Rename cols to add "avg." in front of each variable name:
for (i in 3:dim(dat2)[2]) { names(dat2)[i] <- paste("avg.", names(dat2)[i], sep="")}


# Please upload your data set as a txt file created with write.table() using row.name=FALSE:
write.table(dat2, file="step5_tidy_data.txt", row.name=FALSE, sep="\t")



