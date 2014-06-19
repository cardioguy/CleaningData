Summary
This assignment performs the following steps.
1.	Merges the training and the test sets to create one data set.  
2.	Extracts only the measurements on the mean and standard deviation for each measurement. 
3.	Uses descriptive activity names to name the activities in the data set
4.	Appropriately labels the data set with descriptive activity names. 
5.	Creates a second, independent tidy data set with the average of each variable for each activity and each subject  

Raw Data

The raw data set was created by reading both the training and test data set and merging the two data sets together (using rbind()).  Building the training and test data sets consisted of reading the following files:
•	the training and test set data (X_train.txt, X_test.txt),  
•	the training and test labels (y_train.txt, y_test.txt) and 
•	the subject file which identifies the subject and respective activities (subject_train.txt, subject_test.txt). 
and combining these components into a single file.  If the file was merged with reducing the number of variables, the resulting file consists of  10299 obs. of  563 variables. However, if only variables representing mean and standard deviations in the dataset (based on mean or std in the column label) were saved the resulting raw data file would consist of  10299 obs. of  68 variables. Of these variables, 2 columns identify the subject and the activity type (e.g. walking) resulting (in the 2nd case)  66 variables.  These variables include both time and frequency based measures.  The time based features are derived from an accelerometer (tAcc-XYZ) and gyroscope (tGyro-XYZ) which include measurements for each of the 3 dimensions XYZ for each sensor. Additional time based measurements are determined using filtering, and calculating the Euclidean norm.  Frequency based measurements are determined using a Fast Fourier Transform.  Note that time and frequency variables are denoted by a leading t or f respectively

Tidy Data
The tidying process consists of cleaning up the variable names to make the names more readable.  This was followed by averaging the sub-setted data prior to saving in a CSV file. Cleaning up the variable names consisted of removing parens, and dashes from the names (as well as modifying awkward names with text such as BodyBody.  

Table 1 - Mappings
From		To
()		empty
-Mean		Mean
Std		Stndev
BodyBody	Body

Other modifications to the variable names it was deemed would make them less readable. The pre and post cleaned names are listed below.

Before names “cleaned” up
[1] "label"                       "subject"                    
 [3] "tBodyAcc-mean()-X"           "tBodyAcc-mean()-Y"          
 [5] "tBodyAcc-mean()-Z"           "tBodyAcc-std()-X"           
 [7] "tBodyAcc-std()-Y"            "tBodyAcc-std()-Z"           
 [9] "tGravityAcc-mean()-X"        "tGravityAcc-mean()-Y"       
[11] "tGravityAcc-mean()-Z"        "tGravityAcc-std()-X"        
[13] "tGravityAcc-std()-Y"         "tGravityAcc-std()-Z"        
[15] "tBodyAccJerk-mean()-X"       "tBodyAccJerk-mean()-Y"      
[17] "tBodyAccJerk-mean()-Z"       "tBodyAccJerk-std()-X"       
[19] "tBodyAccJerk-std()-Y"        "tBodyAccJerk-std()-Z"       
[21] "tBodyGyro-mean()-X"          "tBodyGyro-mean()-Y"         
[23] "tBodyGyro-mean()-Z"          "tBodyGyro-std()-X"          
[25] "tBodyGyro-std()-Y"           "tBodyGyro-std()-Z"          
[27] "tBodyGyroJerk-mean()-X"      "tBodyGyroJerk-mean()-Y"     
[29] "tBodyGyroJerk-mean()-Z"      "tBodyGyroJerk-std()-X"      
[31] "tBodyGyroJerk-std()-Y"       "tBodyGyroJerk-std()-Z"      
[33] "tBodyAccMag-mean()"          "tBodyAccMag-std()"          
[35] "tGravityAccMag-mean()"       "tGravityAccMag-std()"       
[37] "tBodyAccJerkMag-mean()"      "tBodyAccJerkMag-std()"      
[39] "tBodyGyroMag-mean()"         "tBodyGyroMag-std()"         
[41] "tBodyGyroJerkMag-mean()"     "tBodyGyroJerkMag-std()"     
[43] "fBodyAcc-mean()-X"           "fBodyAcc-mean()-Y"          
[45] "fBodyAcc-mean()-Z"           "fBodyAcc-std()-X"           
[47] "fBodyAcc-std()-Y"            "fBodyAcc-std()-Z"           
[49] "fBodyAccJerk-mean()-X"       "fBodyAccJerk-mean()-Y"      
[51] "fBodyAccJerk-mean()-Z"       "fBodyAccJerk-std()-X"       
[53] "fBodyAccJerk-std()-Y"        "fBodyAccJerk-std()-Z"       
[55] "fBodyGyro-mean()-X"          "fBodyGyro-mean()-Y"         
[57] "fBodyGyro-mean()-Z"          "fBodyGyro-std()-X"          
[59] "fBodyGyro-std()-Y"           "fBodyGyro-std()-Z"          
[61] "fBodyAccMag-mean()"          "fBodyAccMag-std()"          
[63] "fBodyBodyAccJerkMag-mean()"  "fBodyBodyAccJerkMag-std()"  
[65] "fBodyBodyGyroMag-mean()"     "fBodyBodyGyroMag-std()"     
[67] "fBodyBodyGyroJerkMag-mean()" "fBodyBodyGyroJerkMag-std()" 

After names “cleaned” up
[1] "label"                "subject"             
 [3] "tBodyAccmeanX"        "tBodyAccmeanY"       
 [5] "tBodyAccmeanZ"        "tBodyAccstdX"        
 [7] "tBodyAccstdY"         "tBodyAccstdZ"        
 [9] "tGravityAccmeanX"     "tGravityAccmeanY"    
[11] "tGravityAccmeanZ"     "tGravityAccstdX"     
[13] "tGravityAccstdY"      "tGravityAccstdZ"     
[15] "tBodyAccJerkmeanX"    "tBodyAccJerkmeanY"   
[17] "tBodyAccJerkmeanZ"    "tBodyAccJerkstdX"    
[19] "tBodyAccJerkstdY"     "tBodyAccJerkstdZ"    
[21] "tBodyGyromeanX"       "tBodyGyromeanY"      
[23] "tBodyGyromeanZ"       "tBodyGyrostdX"       
[25] "tBodyGyrostdY"        "tBodyGyrostdZ"       
[27] "tBodyGyroJerkmeanX"   "tBodyGyroJerkmeanY"  
[29] "tBodyGyroJerkmeanZ"   "tBodyGyroJerkstdX"   
[31] "tBodyGyroJerkstdY"    "tBodyGyroJerkstdZ"   
[33] "tBodyAccMagmean"      "tBodyAccMagstd"      
[35] "tGravityAccMagmean"   "tGravityAccMagstd"   
[37] "tBodyAccJerkMagmean"  "tBodyAccJerkMagstd"  
[39] "tBodyGyroMagmean"     "tBodyGyroMagstd"     
[41] "tBodyGyroJerkMagmean" "tBodyGyroJerkMagstd" 
[43] "fBodyAccmeanX"        "fBodyAccmeanY"       
[45] "fBodyAccmeanZ"        "fBodyAccstdX"        
[47] "fBodyAccstdY"         "fBodyAccstdZ"        
[49] "fBodyAccJerkmeanX"    "fBodyAccJerkmeanY"   
[51] "fBodyAccJerkmeanZ"    "fBodyAccJerkstdX"    
[53] "fBodyAccJerkstdY"     "fBodyAccJerkstdZ"    
[55] "fBodyGyromeanX"       "fBodyGyromeanY"      
[57] "fBodyGyromeanZ"       "fBodyGyrostdX"       
[59] "fBodyGyrostdY"        "fBodyGyrostdZ"       
[61] "fBodyAccMagmean"      "fBodyAccMagstd"      
[63] "fBodyAccJerkMagmean"  "fBodyAccJerkMagstd"  
[65] "fBodyGyroMagmean"     "fBodyGyroMagstd"     
[67] "fBodyGyroJerkMagmean" "fBodyGyroJerkMagstd" 



 
Appendix.
=================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
 
