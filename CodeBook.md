Getting and Cleaning Data Assignment
========================================================

## CodeBook for Getting and Cleaning Data Assignment

As excerpted from README.txt in UCI HAR Dataset:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

## Identifiers (unique)
### Subject 

Subject of measurement.  Subject ID may come from either test or training data set.

### Activity

Textual description of data set.  Description obtained from activity_labels.txt in UCI HAR Dataset.

1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

## Feature Measurements (mean) 
The following variables represent means of all measurements for that subject & activity combination across the measured data sets.  


### Time Domain Signals
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

#### Body Acceleration

Body acceleration measurements separated with a low pass Butterworth filter with a corner frequency of 0.3Hz.

##### mean.XDimension.timeDomainBodyAcceleration

Mean of time domain means of adjusted body acceleration from accelerometer captured at a constant rate of 50 Hz in Z dimension. Raw measurements were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise, then separated using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

##### mean.YDimension.timeDomainBodyAcceleration

Mean of time domain means of adjusted body acceleration from accelerometer captured at a constant rate of 50 Hz in Y dimension. Raw measurements were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise, then separated using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

##### mean.ZDimension.timeDomainBodyAcceleration

Mean of time domain means of adjusted body acceleration from accelerometer captured at a constant rate of 50 Hz in Z dimension. Raw measurements were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise, then separated using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

##### stdDev.XDimension.timeDomainBodyAcceleration

Mean of time domain standard deviations of adjusted body acceleration from accelerometer captured at a constant rate of 50 Hz in X dimension. Raw measurements were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise, then separated using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

##### stdDev.YDimension.timeDomainBodyAcceleration

Mean of time domain standard deviations of adjusted body acceleration from accelerometer captured at a constant rate of 50 Hz in Y dimension. Raw measurements were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise, then separated using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

##### stdDev.ZDimension.timeDomainBodyAcceleration

Mean of time domain standard deviations of adjusted body acceleration from accelerometer captured at a constant rate of 50 Hz in Z dimension. Raw measurements were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise, then separated using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

#### Gravity Acceleration

Gravity acceleration measurements separated with a low pass Butterworth filter with a corner frequency of 0.3Hz.

##### mean.XDimension.timeDomainGravityAcceleration

Mean of time domain means of adjusted gravity acceleration from accelerometer captured at a constant rate of 50 Hz in X dimension. Raw measurements were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise, then separated using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

##### mean.YDimension.timeDomainGravityAcceleration

Mean of time domain means of adjusted gravity acceleration from accelerometer captured at a constant rate of 50 Hz in Y dimension. Raw measurements were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise, then separated using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

##### mean.ZDimension.timeDomainGravityAcceleration

Mean of time domain means of adjusted gravity acceleration from accelerometer captured at a constant rate of 50 Hz in Z dimension. Raw measurements were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise, then separated using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

##### stdDev.XDimension.timeDomainGravityAcceleration

Mean of time domain means of adjusted gravity acceleration from accelerometer captured at a constant rate of 50 Hz in X dimension. Raw measurements were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise, then separated using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

##### stdDev.YDimension.timeDomainGravityAcceleration

Mean of time domain standard deviations of adjusted gravity acceleration from accelerometer captured at a constant rate of 50 Hz in Y dimension. Raw measurements were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise, then separated using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

##### stdDev.ZDimension.timeDomainGravityAcceleration

Mean of time domain standard deviations of adjusted gravity acceleration from accelerometer captured at a constant rate of 50 Hz in Z dimension. Raw measurements were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise, then separated using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

#### Gyroscope

Gyroscope measurements.

##### mean.XDimension.timeDomainBodyGyroscope

Mean of time domain means of adjusted body axial measurements from gyroscope captured at a constant rate of 50 Hz in X dimension. Raw measurements were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.

##### mean.YDimension.timeDomainBodyGyroscope

Mean of time domain means of adjusted body axial measurements from gyroscope captured at a constant rate of 50 Hz in Y dimension. Raw measurements were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.

##### mean.ZDimension.timeDomainBodyGyroscope

Mean of time domain means of adjusted body axial measurements from gyroscope captured at a constant rate of 50 Hz in Z dimension. Raw measurements were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.

##### stdDev.XDimension.timeDomainBodyGyroscope

Mean of time domain standard deviations of adjusted body axial measurements from gyroscope captured at a constant rate of 50 Hz in X dimension. Raw measurements were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.

##### stdDev.YDimension.timeDomainBodyGyroscope

Mean of time domain standard deviations of adjusted body axial measurements from gyroscope captured at a constant rate of 50 Hz in Y dimension. Raw measurements were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.

##### stdDev.ZDimension.timeDomainBodyGyroscope

Mean of time domain standard deviations of adjusted body axial measurements from gyroscope captured at a constant rate of 50 Hz in Z dimension. Raw measurements were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.


#### Jerk Signals

The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 

##### mean.XDimension.timeDomainBodyAccelerationJerk

Mean of the means of the Jerk acceleration as described above in X dimension.

##### mean.YDimension.timeDomainBodyAccelerationJerk

Mean of the means of the Jerk acceleration as described above in Y dimension.

##### mean.ZDimension.timeDomainBodyAccelerationJerk

Mean of the means of the Jerk acceleration as described above in Z dimension.

##### stdDev.XDimension.timeDomainBodyAccelerationJerk

Mean of the standard deviations of the Jerk acceleration as described above in X dimension.

##### stdDev.YDimension.timeDomainBodyAccelerationJerk

Mean of the standard deviations of the Jerk acceleration as described above in Y dimension.

##### stdDev.ZDimension.timeDomainBodyAccelerationJerk

Mean of the standard deviations of the Jerk acceleration as described above in Z dimension.

###### mean.XDimension.timeDomainBodyGyroscopeJerk

Mean of the means of the gyrosocpe Jerk as described above in X dimension.

##### mean.YDimension.timeDomainBodyGyroscopeJerk

Mean of the means of the gyrosocpe Jerk as described above in Y dimension.

##### mean.ZDimension.timeDomainBodyGyroscopeJerk

Mean of the means of the gyrosocpe Jerk as described above in Z dimension.

##### stdDev.XDimension.timeDomainBodyGyroscopeJerk

Mean of the standard deviations of the gyrosocpe Jerk as described above in X dimension.

##### stdDev.YDimension.timeDomainBodyGyroscopeJerk

Mean of the standard deviations of the gyrosocpe Jerk as described above in Y dimension.

##### stdDev.ZDimension.timeDomainBodyGyroscopeJerk

Mean of the standard deviations of the gyrosocpe Jerk as described above in Z dimension.

#### Magnitudes of three dmensional signals (Euclidean norm)

Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

##### mean.timeDomainBodyAccelerationMagnitude

Mean of the means of the magnitude of three dimensional body accleration  as described above.

##### stdDev.timeDomainBodyAccelerationMagnitude

Mean of the standrd deviation of the magnitude of three dimensional body accleration as described above.

##### mean.timeDomainGravityAccelerationMagnitude

Mean of the means of the magnitude of three dimensional gravity accleration as described above.

##### stdDev.timeDomainGravityAccelerationMagnitude

Mean of the standrd deviation of the magnitude of three dimensional gravity accleration as described above.

##### mean.timeDomainBodyAccelerationJerkMagnitude

Mean of the means of the magnitude of three dimensional body accleration jerk as described above.

##### stdDev.timeDomainBodyAccelerationJerkMagnitude

Mean of the standrd deviation of the magnitude of three dimensional body accleration jerk as described above.

##### mean.timeDomainBodyGyroscopeMagnitude

Mean of the means of the magnitude of three dimensional body gyroscope signal as described above.

##### stdDev.timeDomainBodyGyroscopeMagnitude

Mean of the standrd deviation of the magnitude of three dimensional body gyroscope signal as described above.

##### mean.timeDomainBodyGyroscopeJerkMagnitude

Mean of the means of the magnitude of three dimensional body gyroscope jerk as described above.

##### stdDev.timeDomainBodyGyroscopeJerkMagnitude

Mean of the standrd deviation of the magnitude of three dimensional body gyroscope jerk as described above.

### Frequency Domain Measurements

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

#### mean.XDimension.frequencyDomainBodyAcceleration

Mean of frequency domain (FFT) transformation applied to means of accellerometer raw signals in X dimension.

#### mean.YDimension.frequencyDomainBodyAcceleration

Mean of frequency domain (FFT) transformation applied to means of accellerometer raw signals in Y dimension.

#### mean.ZDimension.frequencyDomainBodyAcceleration

Mean of frequency domain (FFT) transformation applied to means of accellerometer raw signals in Z dimension.

#### stdDev.XDimension.frequencyDomainBodyAcceleration

Mean of frequency domain (FFT) transformation applied to standard deviation of accellerometer raw signals in X dimension.

#### stdDev.YDimension.frequencyDomainBodyAcceleration

Mean of frequency domain (FFT) transformation applied to standard deviation of accellerometer raw signals in Y dimension.

#### stdDev.ZDimension.frequencyDomainBodyAcceleration

Mean of frequency domain (FFT) transformation applied to standard deviation of accellerometer raw signals in Z dimension.

#### meanFrequency.XDimension.frequencyDomainBodyAcceleration

Mean of frequency domain (FFT) transformation applied to mean frequency of accellerometer raw signals in X dimension.

#### meanFrequency.YDimension.frequencyDomainBodyAcceleration

Mean of frequency domain (FFT) transformation applied to mean frequency of accellerometer raw signals in Y dimension.

#### meanFrequency.ZDimension.frequencyDomainBodyAcceleration

Mean of frequency domain (FFT) transformation applied to mean frequency of accellerometer raw signals in Z dimension.

#### Jerk Measurements

Frequency domain (FFT) of the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 

##### mean.XDimension.frequencyDomainBodyAccelerationJerk

Mean of means of frequency domain (FFT) transformation applied to body acceleration jerk in X dimension.

##### mean.YDimension.frequencyDomainBodyAccelerationJerk

Mean of means of frequency domain (FFT) transformation applied to body acceleration jerk in Y dimension.

##### mean.ZDimension.frequencyDomainBodyAccelerationJerk

Mean of means of frequency domain (FFT) transformation applied to body acceleration jerk in Z dimension.

##### stdDev.XDimension.frequencyDomainBodyAccelerationJerk

Mean of standard deviations of frequency domain (FFT) transformation applied to body acceleration jerk in X dimension.

##### stdDev.YDimension.frequencyDomainBodyAccelerationJerk

Mean of of standard deviations of frequency domain (FFT) transformation applied to body acceleration jerk in Y dimension.

##### stdDev.ZDimension.frequencyDomainBodyAccelerationJerk

Mean of of standard deviations of frequency domain (FFT) transformation applied to body acceleration jerk in Z dimension.

##### meanFrequency.XDimension.frequencyDomainBodyAccelerationJerk

Mean of mean frequencies of frequency domain (FFT) transformation applied to body acceleration jerk in X dimension.

##### meanFrequency.YDimension.frequencyDomainBodyAccelerationJerk

Mean of mean frequencies of frequency domain (FFT) transformation applied to body acceleration jerk in Y dimension.

##### meanFrequency.ZDimension.frequencyDomainBodyAccelerationJerk

Mean of mean frequencies of frequency domain (FFT) transformation applied to body acceleration jerk in Z dimension.

#### Gyroscope Measurements

##### mean.XDimension.frequencyDomainBodyGyroscope

Mean of the means of frequency domain (FFT Transformation) of the body gyroscope signal in the X dimension.

##### mean.YDimension.frequencyDomainBodyGyroscope

Mean of the means of frequency domain (FFT Transformation) of the body gyroscope signal in the Y dimension.

##### mean.ZDimension.frequencyDomainBodyGyroscope

Mean of the means of frequency domain (FFT Transformation) of the body gyroscope signal in the Z dimension.

##### stdDev.XDimension.frequencyDomainBodyGyroscope

Mean of the standard deviations of frequency domain (FFT Transformation) of the body gyroscope signal in the X dimension.

##### stdDev.YDimension.frequencyDomainBodyGyroscope

Mean of the standard deviations of frequency domain (FFT Transformation) of the body gyroscope signal in the Y dimension.

##### stdDev.ZDimension.frequencyDomainBodyGyroscope

Mean of the standard deviations of frequency domain (FFT Transformation) of the body gyroscope signal in the Z dimension.

##### meanFrequency.XDimension.frequencyDomainBodyGyroscope

Mean of the mean frequencies of frequency domain (FFT Transformation) of the body gyroscope signal in the X dimension.

##### meanFrequency.YDimension.frequencyDomainBodyGyroscope

Mean of the mean frequencies of frequency domain (FFT Transformation) of the body gyroscope signal in the Y dimension.

##### meanFrequency.ZDimension.frequencyDomainBodyGyroscope

Mean of the mean frequencies of frequency domain (FFT Transformation) of the body gyroscope signal in the Z dimension.

#### Magnitude Measurements

##### mean.frequencyDomainBodyAccelerationMagnitude

Mean of the means of frequency domain (FFT Transformation) of the magnitude of three dimensional body acceleration as described above.

##### stdDev.frequencyDomainBodyAccelerationMagnitude

Mean of the standard deviations of frequency domain (FFT Transformation) of the magnitude of three dimensional body acceleration as described above.

##### meanFrequency.frequencyDomainBodyAccelerationMagnitude

Mean of the mean frequencies of frequency domain (FFT Transformation) of the magnitude of three dimensional body acceleration as described above.

##### mean.frequencyDomainBodyAccelerationJerkMagnitude

Mean of the means of frequency domain (FFT Transformation) of the magnitude of three dimensional body acceleration jerk as described above.

##### stdDev.frequencyDomainBodyAccelerationJerkMagnitude

Mean of the standard deviations of frequency domain (FFT Transformation) of the magnitude of three dimensional body acceleration jerk as described above.

##### meanFrequency.frequencyDomainBodyAccelerationJerkMagnitude

Mean of the mean frequencies of frequency domain (FFT Transformation) of the magnitude of three dimensional body acceleration jerk as described above.

##### mean.frequencyDomainBodyGyroscopeMagnitude

Mean of the means of frequency domain (FFT Transformation) of the magnitude of three dimensional body gyroscope signal as described above.

##### stdDev.frequencyDomainBodyGyroscopeMagnitude

Mean of the standard deviations of frequency domain (FFT Transformation) of the magnitude of three dimensional body gyroscope signal as described above.

##### meanFrequency.frequencyDomainBodyGyroscopeMagnitude

Mean of the mean frequencies s of frequency domain (FFT Transformation) of the magnitude of three dimensional body gyroscope signal as described above.

##### mean.frequencyDomainBodyGyroscopeJerkMagnitude

Mean of the means of frequency domain (FFT Transformation) of the magnitude of three dimensional body gyroscope jerk as described above.

##### stdDev.frequencyDomainBodyGyroscopeJerkMagnitude

Mean of the standrd deviation of frequency domain (FFT Transformation) of the magnitude of three dimensional body gyroscope jerk as described above.

##### meanFrequency.frequencyDomainBodyGyroscopeJerkMagnitude

Mean of the mean frequency of frequency domain (FFT Transformation) of the magnitude of three dimensional body gyroscope jerk as described above.