# README.txt for R script run_analysis.R 

# The R script run_analysis.R downloads the "Human Activity Recognition Using Smartphones Dataset Version 1.0"  file from website https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" to the home directory. 
# Broadly, it then perfoms the following steps:
# 1. Merges training and test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. This step of the question
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set with the 
#    average of each variable for each activity and each subject.

# Step 1:
# The data includes two dataset subsets - a training set (data found in files subject_train.txt, X_train.txt, y_train.txt) and a test set (data found in files subject_test.txt, X_test.txt, y_test.txt) each set comprising the same variables and one row per subject. 
# The subject ID columns (found in subject_test/subject_train) and the activity labels columns (y_test/y_train) are bound to the start of x_test and x_train. The training and test data are then combined by binding the test set rows to the end of the training set rows.

# Step 4:
# This step is addressed here to facilitate the extraction of mean and std columns for step 2 later.
# In this step, the data set is appropriately labelled with descriptive variable names (column names) from the feature.txt file accompanying the data in the downloaded zip file. 

# Step 2:
# This step extracts only the measurements on the mean and standard deviation for each measurement. 
# I chose to include variables with any mention of mean or std in the name by ignoring the case in the grep command (ignore.case=T), as the question does not specify that certain mean/std measurements should be excluded. To only include those with "mean" or "std", the script could be modified to just use the default ignore.case=F.

# Step 3:
# This step uses descriptive activity names to name the activities in the data set
# The Activity variable is converted from an integer variable with values 1:6 to a character variable with corresponding values "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"

# Step 5: 
# A second, independent tidy data set is then created which contains the average of each variable for each activity and each subject. Variable names are preceded with "avg." to indicate that averaging has been performed. See Codebook.md for details of the variables in this new data set.

# Step 6: 
# The data set created in step 5 is written to a text file using write.table() using row.names=F as specified in the project outline. The resulting file is named step5_tidy_data.txt

