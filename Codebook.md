Codebook for file step5_tidy_data.txt

step5_tidy_data.txt was created from the R script run_analysis.R that downloads the "Human Activity Recognition Using Smartphones Dataset Version 1.0" file from website https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" to the home directory. Data was downloaded on 25th January 2015. Data variables were computed for each of those original variables containing the case insensitive text "mean" or "std" in the variable name. In each case, the data was grouped by subject ID and Activity and averaged. 

From the README.txt file downloaded with this data:

"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. "

VARIABLE DESCRIPTIONS:

Subject
        Identification number for each study participant. Integer variable, range 1 to 30, no units.

Activity
        Activity performed by participant. Character variable, 6 values: 
        "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"

avg.tBodyAcc.mean...X         
        
avg.tBodyAcc.mean...Y                   

avg.tBodyAcc.mean...Z                    

avg.tBodyAcc.std...X                   

avg.tBodyAcc.std...Y                     

avg.tBodyAcc.std...Z                    

avg.tGravityAcc.mean...X                 

avg.tGravityAcc.mean...Y                

avg.tGravityAcc.mean...Z                 

avg.tGravityAcc.std...X                 

avg.tGravityAcc.std...Y                  

avg.tGravityAcc.std...Z                 

avg.tBodyAccJerk.mean...X                

avg.tBodyAccJerk.mean...Y               

avg.tBodyAccJerk.mean...Z                

avg.tBodyAccJerk.std...X                

avg.tBodyAccJerk.std...Y                 

avg.tBodyAccJerk.std...Z                

avg.tBodyGyro.mean...X                   

avg.tBodyGyro.mean...Y                  

avg.tBodyGyro.mean...Z                   

avg.tBodyGyro.std...X                   

avg.tBodyGyro.std...Y                    

avg.tBodyGyro.std...Z                   

avg.tBodyGyroJerk.mean...X               

avg.tBodyGyroJerk.mean...Y              

avg.tBodyGyroJerk.mean...Z               

avg.tBodyGyroJerk.std...X               

avg.tBodyGyroJerk.std...Y                

avg.tBodyGyroJerk.std...Z               

avg.tBodyAccMag.mean..                   

avg.tBodyAccMag.std..                   

avg.tGravityAccMag.mean..                

avg.tGravityAccMag.std..                

avg.tBodyAccJerkMag.mean..               

avg.tBodyAccJerkMag.std..               

avg.tBodyGyroMag.mean..                  

avg.tBodyGyroMag.std..                  

avg.tBodyGyroJerkMag.mean..              

avg.tBodyGyroJerkMag.std..              

avg.fBodyAcc.mean...X                    

avg.fBodyAcc.mean...Y                   

avg.fBodyAcc.mean...Z                    

avg.fBodyAcc.std...X                    

avg.fBodyAcc.std...Y                     

avg.fBodyAcc.std...Z                    

avg.fBodyAcc.meanFreq...X                

avg.fBodyAcc.meanFreq...Y               

avg.fBodyAcc.meanFreq...Z                

avg.fBodyAccJerk.mean...X               

avg.fBodyAccJerk.mean...Y                

avg.fBodyAccJerk.mean...Z               

avg.fBodyAccJerk.std...X                 

avg.fBodyAccJerk.std...Y                

avg.fBodyAccJerk.std...Z                 

avg.fBodyAccJerk.meanFreq...X           

avg.fBodyAccJerk.meanFreq...Y            

avg.fBodyAccJerk.meanFreq...Z           

avg.fBodyGyro.mean...X                   

avg.fBodyGyro.mean...Y                  

avg.fBodyGyro.mean...Z                   

avg.fBodyGyro.std...X                   

avg.fBodyGyro.std...Y                    

avg.fBodyGyro.std...Z                   

avg.fBodyGyro.meanFreq...X               

avg.fBodyGyro.meanFreq...Y              

avg.fBodyGyro.meanFreq...Z               

avg.fBodyAccMag.mean..                  

avg.fBodyAccMag.std..                    

avg.fBodyAccMag.meanFreq..              

avg.fBodyBodyAccJerkMag.mean..           

avg.fBodyBodyAccJerkMag.std..           

avg.fBodyBodyAccJerkMag.meanFreq..       

avg.fBodyBodyGyroMag.mean..             

avg.fBodyBodyGyroMag.std..               

avg.fBodyBodyGyroMag.meanFreq..         

avg.fBodyBodyGyroJerkMag.mean..          

avg.fBodyBodyGyroJerkMag.std..          

avg.fBodyBodyGyroJerkMag.meanFreq..      

avg.angle.tBodyAccMean.gravity.         

avg.angle.tBodyAccJerkMean..gravityMean. 

avg.angle.tBodyGyroMean.gravityMean.    

avg.angle.tBodyGyroJerkMean.gravityMean. 

avg.angle.X.gravityMean.                

avg.angle.Y.gravityMean.                 

avg.angle.Z.gravityMean. 