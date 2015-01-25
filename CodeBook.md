Tidy Human Activity Recognition Using Smartphones Dataset [1]
--------------------------------------------------------------

### Original data:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

### Tidy Data:
The tidy dataset only contains the mean and standard deviation from the original measurements.They have been summarised as a mean for each of the six activities and each of the 30 subjects. This results in a data frame of 180 rows (6x30) and 68 columns. The measurements are in time (t) or frequency (f). 

|Variable            |Description           |Type        |
|:-------------------|:---------------------|:-----------|
|Activity            |Label of the activity |Factor      |
|Subject             |Subject ID            |Inteteger   |
|Measurements        |Mean of the mean or standard deviation of the original measurement|Numeric |

**Activity Labels**  
1. WALKING  
2. WALKING_UPSTAIRS  
3. WALKING_DOWNSTAIRS  
4. SITTING  
5. STANDING  
6. LAYING  

**Measurements**  
tBodyAccmeanX             
tBodyAccmeanY  
tBodyAccmeanZ  
tBodyAccstdX            
tBodyAccstdY             
tBodyAccstdZ             
tGravityAccmeanX       
tGravityAccmeanY         
tGravityAccmeanZ         
tGravityAccstdX         
tGravityAccstdY          
tGravityAccstdZ          
tBodyAccJerkmeanX       
tBodyAccJerkmeanY        
tBodyAccJerkmeanZ        
tBodyAccJerkstdX        
tBodyAccJerkstdY         
tBodyAccJerkstdZ        
tBodyGyromeanX        
tBodyGyromeanY          
tBodyGyromeanZ           
tBodyGyrostdX           
tBodyGyrostdY            
tBodyGyrostdZ            
tBodyGyroJerkmeanX      
tBodyGyroJerkmeanY       
tBodyGyroJerkmeanZ       
tBodyGyroJerkstdX       
tBodyGyroJerkstdY        
tBodyGyroJerkstdZ        
tBodyAccMagmean         
tBodyAccMagstd           
tGravityAccMagmean       
tGravityAccMagstd       
tBodyAccJerkMagmean      
tBodyAccJerkMagstd       
tBodyGyroMagmean        
tBodyGyroMagstd          
tBodyGyroJerkMagmean    
tBodyGyroJerkMagstd     
fBodyAccmeanX            
fBodyAccmeanY            
fBodyAccmeanZ           
fBodyAccstdX            
fBodyAccstdY             
fBodyAccstdZ            
fBodyAccJerkmeanX        
fBodyAccJerkmeanY        
fBodyAccJerkmeanZ       
fBodyAccJerkstdX         
fBodyAccJerkstdY         
fBodyAccJerkstdZ       
fBodyGyromeanX           
fBodyGyromeanY           
fBodyGyromeanZ          
fBodyGyrostdX            
fBodyGyrostdY            
fBodyGyrostdZ           
fBodyAccMagmean          
fBodyAccMagstd           
fBodyBodyAccJerkMagmean   
fBodyBodyAccJerkMagstd    
fBodyBodyGyroMagmean       
fBodyBodyGyroMagstd       
fBodyBodyGyroJerkMagmean  
fBodyBodyGyroJerkMagstd   

[1] based on: David e Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
