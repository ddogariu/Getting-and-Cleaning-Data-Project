The features selected for the raw database come from the accelerometer and gyroscope 3-axial raw  signals 
tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant
rate of 50 Hz. Then they were filtered using a median filter and a  3rd order low pass Butterworth filter 
with a corner frequency of 20 Hz to remove noise. Similarly, the  acceleration  signal was then separated 
into body and gravity acceleration signals (tBodyAcc-XYZ and  tGravityAcc-XYZ)  using  another  low  pass 
Butterworth filter with a corner frequency of 0.3 Hz. Subsequently,  the  body  linear  acceleration  and 
angular velocity were derived in time to obtain Jerk signals  (tBodyAccJerk-XYZ  and  tBodyGyroJerk-XYZ). 
Also  the  magnitude  of  these  three-dimensional  signals  were  calculated  using  the  Euclidean norm 
(tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). Finally  a  Fast  Fourier 
Transform  (FFT)  was  applied  to  some  of  these  signals  producing  fBodyAcc-XYZ,  fBodyAccJerk-XYZ, 
fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note  the  'f'  to  indicate  frequency 
domain signals). These signals were used to estimate variables of  the  feature  vector for each pattern:  
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
  
Only  the  measurements  on  the  mean  and  standard  deviation for  each  measurement  were  extracted
after the training and the test sets wer emerged in order to create one single data set. In the end, the
tidy data set was obtained by averaging each variable for each activity and each subject

mean(): Mean value
std(): Standard deviation
meanFreq(): Weighted average of the frequency components to obtain a mean frequency

Additional vectors obtained by averaging the signals in a signal window sample. These  are used  on  the 
angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The final tidy data set was labelled with descriptive variable. 

There are 82 variables in the tidy dataset:

2 factor features
Subject: the id of the person paticipating in the experiment 30 levels (1-30) 
Activity: 6 levels (1-6)
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING


79 numeric features

  tBodyAccStdX            
  tBodyAccStdY           
  tBodyAccStdZ           
  tGravityAccStdX         
  tGravityAccStdY         
  tGravityAccStdZ        
  tBodyAccJerkStdX        
  tBodyAccJerkStdY        
  tBodyAccJerkStdZ       
  tBodyGyroStdX          
  tBodyGyroStdY           
  tBodyGyroStdZ           
  tBodyGyroJerkStdX       
  tBodyGyroJerkStdY      
  tBodyGyroJerkStdZ      
  tBodyAccMagStd          
  tGravityAccMagStd      
  tBodyAccJerkMagStd      
  tBodyGyroMagStd         
  tBodyGyroJerkMagStd     
  fBodyAccStdX            
  fBodyAccStdY            
  fBodyAccStdZ          
  fBodyAccJerkStdX        
  fBodyAccJerkStdY        
  fBodyAccJerkStdZ        
  fBodyGyroStdX           
  fBodyGyroStdY           
  fBodyGyroStdZ          
  fBodyAccMagStd          
  fBodyAccJerkMagStd     
  fBodyGyroMagStd         
  fBodyGyroJerkMagStd     
  tBodyAccMeanX           
  tBodyAccMeanY           
  tBodyAccMeanZ           
  tGravityAccMeanX        
  tGravityAccMeanY        
  tGravityAccMeanZ        
  tBodyAccJerkMeanX       
  tBodyAccJerkMeanY       
  tBodyAccJerkMeanZ       
  tBodyGyroMeanX          
  tBodyGyroMeanY          
  tBodyGyroMeanZ         
  tBodyGyroJerkMeanX      
  tBodyGyroJerkMeanY      
  tBodyGyroJerkMeanZ      
  tBodyAccMagMean        
  tGravityAccMagMean      
  tBodyAccJerkMagMean     
  tBodyGyroMagMean        
  tBodyGyroJerkMagMean    
  fBodyAccMeanX           
  fBodyAccMeanY           
  fBodyAccMeanZ           
  fBodyAccMeanFreqX       
  fBodyAccMeanFreqY       
  fBodyAccMeanFreqZ       
  fBodyAccJerkMeanX       
  fBodyAccJerkMeanY       
  fBodyAccJerkMeanZ       
  fBodyAccJerkMeanFreqX   
  fBodyAccJerkMeanFreqY   
  fBodyAccJerkMeanFreqZ   
  fBodyGyroMeanX          
  fBodyGyroMeanY          
  fBodyGyroMeanZ          
  fBodyGyroMeanFreqX      
  fBodyGyroMeanFreqY      
  fBodyGyroMeanFreqZ      
  fBodyAccMagMean         
  fBodyAccMagMeanFreq     
  fBodyAccJerkMagMean     
  fBodyAccJerkMagMeanFreq 
  fBodyGyroMagMean       
  fBodyGyroMagMeanFreq    
  fBodyGyroJerkMagMean    
  fBodyGyroJerkMagMeanFreq



