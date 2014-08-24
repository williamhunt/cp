#Code Book

There are three types of variables used in this data set: 

* subject	integer	range 1-30
* activity	factor	LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS
* others	numeric	normalized -1 to +1

All  of the numeric variables are means of measurements taken within the treatment class of subject X activity. They are derived from two sensors on the Samsung Galaxy S smartphone: an accelerometer and a gyroscope. Frequency domain measures were obtained using a Fast Fourier Transform (FFT).


##Variables			

####subject
ID of subject wearing the Samsung Galaxy S with accelerometer and gyroscope
####activity				
activity during measurement

####tBodyAcc_mean_X			
time-based body acceleration  mean along X axis				-0.040514 to 0.3015
####tBodyAcc_mean_Y			
time-based body acceleration  mean along Y axis				-0.15251 to -0.001308	
####tBodyAcc_mean_Z			
time-based body acceleration  mean along Z axis				-0.9961 to -0.07538	
####tBodyAcc_std_X			
time-based body acceleration standard deviation along X axis			-0.99024 to  0.6269	
####tBodyAcc_std_Y			
time-based body acceleration standard deviation along Y axis			-0.9877 to  0.61694	
####tBodyAcc_std_Z			
time-based body acceleration standard deviation along Z axis			-0.6800 to  0.6090	
####tGravityAcc_mean_X			
time-based  gravity acceleration  mean along X axis				-0.47989 to  0.9745	
####tGravityAcc_mean_Y			
time-based  gravity acceleration  mean along Y axis				-0.49509 to  0.95659	
####tGravityAcc_mean_Z			
time-based  gravity acceleration  mean along Z axis				-0.9968 to  0.95787	
####tGravityAcc_std_X			
time-based  gravity acceleration standard deviation along X axis			-0.9942 to -0.8296	
####tGravityAcc_std_Y			
time-based  gravity acceleration standard deviation along Y axis			-0.9910 to -0.6436	
####tGravityAcc_std_Z			
time-based  gravity acceleration standard deviation along Z axis			0.04269 to -0.6102	
####tBodyAccJerk_mean_X		
time-based body acceleration jerk  mean along X axis			-0.0386872 to 0.13019	
####tBodyAccJerk_mean_Y		
time-based body acceleration jerk  mean along Y axis			-0.067458 to  0.0568186	
####tBodyAccJerk_mean_Z		
time-based body acceleration jerk  mean along Z axis			-0.9946 to  0.038053	
####tBodyAccJerk_std_X			
time-based body acceleration jerk of standard deviation along X axis		-0.9895 to  0.5443	
####tBodyAccJerk_std_Y			
time-based body acceleration jerk of standard deviation along Y axis		-0.99329 to  0.3553	
####tBodyAccJerk_std_Z			
time-based body acceleration jerk of standard deviation along Z axis		-0.20578 to  0.03102	
####tBodyGyro_mean_X			
time-based body gyroscopic  mean along X axis				-0.20421 to  0.19270	
####tBodyGyro_mean_Y			
time-based body gyroscopic  mean along Y axis				-0.07245 to  0.02747	
####tBodyGyro_mean_Z			
time-based body gyroscopic  mean along Z axis				-0.9943 to  0.17910	
####tBodyGyro_std_X			
time-based body gyroscopic standard deviation along X axis			-0.9942 to  0.2677	
####tBodyGyro_std_Y			
time-based body gyroscopic standard deviation along Y axis			-0.9855 to  0.4765	
####tBodyGyro_std_Z			
time-based body gyroscopic standard deviation along Z axis			-0.15721 to  0.5649	
####tBodyGyroJerk_mean_X		
time-based body gyroscopic jerk  mean along X axis				-0.07681 to -0.02209	
####tBodyGyroJerk_mean_Y		
time-based body gyroscopic jerk  mean along Y axis				-0.092500 to -0.01320	
####tBodyGyroJerk_mean_Z		
time-based body gyroscopic jerk  mean along Z axis				-0.9965 to -0.006941	
####tBodyGyroJerk_std_X		
time-based body gyroscopic jerk of standard deviation along X axis		-0.9971 to  0.1791	
####tBodyGyroJerk_std_Y		
time-based body gyroscopic jerk of standard deviation along Y axis		-0.9954 to  0.2959	
####tBodyGyroJerk_std_Z		
time-based body gyroscopic jerk of standard deviation along Z axis		-0.9865 to  0.1932	
####tBodyAccMag_mean			
time-based body acceleration magnitude mean				-0.9865 to  0.6446	
####tBodyAccMag_std			
time-based body acceleration magnitude of standard deviation			-0.9865 to  0.4284	
####tGravityAccMag_mean		
time-based  gravity acceleration magnitude mean				-0.9865 to  0.6446	
####tGravityAccMag_std			
time-based  gravity acceleration magnitude of standard deviation		-0.9928 to  0.4284	
####tBodyAccJerkMag_mean		
time-based body acceleration jerk magnitude mean				-0.9946 to  0.4345	
####tBodyAccJerkMag_std		
time-based body acceleration jerk magnitude of standard deviation		-0.9807 to  0.4506	
####tBodyGyroMag_mean		
time-based body gyroscopic magnitude mean				-0.9814 to  0.4180	
####tBodyGyroMag_std			
time-based body gyroscopic magnitude of standard deviation			-0.99732 to  0.3000	
####tBodyGyroJerkMag_mean		
time-based body gyroscopic jerk magnitude mean				-0.9977 to  0.08758	
####tBodyGyroJerkMag_std		
time-based body gyroscopic jerk magnitude of standard deviation		-0.9952 to  0.2502	

####fBodyAcc_mean_X			
frequency-based (FFT) body acceleration  mean along X axis			-0.98903 to  0.5370	
####fBodyAcc_mean_Y			
frequency-based (FFT) body acceleration  mean along Y axis			-0.9895 to  0.52419	
####fBodyAcc_mean_Z			
frequency-based (FFT) body acceleration  mean along Z axis			-0.9966 to  0.2807	
####fBodyAcc_std_X			
frequency-based (FFT) body acceleration standard deviation along X axis		-0.99068 to  0.6585	
####fBodyAcc_std_Y			frequency-based (FFT) body acceleration standard deviation along Y axis		-0.9872 to  0.56019	
####fBodyAcc_std_Z			frequency-based (FFT) body acceleration standard deviation along Z axis		-0.63591 to  0.6871	
####fBodyAcc_meanFreq_X		frequency-based (FFT) body acceleration  of mean frequency along X axis		-0.379518 to  0.15912	
####fBodyAcc_meanFreq_Y		frequency-based (FFT) body acceleration  of mean frequency along Y axis		-0.52011 to  0.466528	
####fBodyAcc_meanFreq_Z		frequency-based (FFT) body acceleration  of mean frequency along Z axis		-0.9946 to  0.40253	
####fBodyAccJerk_mean_X		frequency-based (FFT) body acceleration jerk  mean along X axis		-0.9894 to  0.4743	
####fBodyAccJerk_mean_Y		frequency-based (FFT) body acceleration jerk  mean along Y axis		-0.9920 to  0.2767	
####fBodyAccJerk_mean_Z		frequency-based (FFT) body acceleration jerk  mean along Z axis		-0.9951 to  0.1578	
####fBodyAccJerk_std_X			frequency-based (FFT) body acceleration jerk of standard deviation along X axis	-0.9905 to  0.4768	
####fBodyAccJerk_std_Y			frequency-based (FFT) body acceleration jerk of standard deviation along Y axis	-0.993108 to  0.3498	
####fBodyAccJerk_std_Z			frequency-based (FFT) body acceleration jerk of standard deviation along Z axis	-0.57604 to -0.006236	
####fBodyAccJerk_meanFreq_X		frequency-based (FFT) body acceleration jerk  of mean frequency along X axis	-0.60197 to  0.33145	
####fBodyAccJerk_meanFreq_Y		frequency-based (FFT) body acceleration jerk  of mean frequency along Y axis	-0.62756 to  0.19568	
####fBodyAccJerk_meanFreq_Z		frequency-based (FFT) body acceleration jerk  of mean frequency along Z axis	-0.9931 to  0.23011	
####fBodyGyro_mean_X			frequency-based (FFT) body gyroscopic  mean along X axis			-0.9940 to  0.4750	
####fBodyGyro_mean_Y			frequency-based (FFT) body gyroscopic  mean along Y axis			-0.9860 to  0.3288	
####fBodyGyro_mean_Z			frequency-based (FFT) body gyroscopic  mean along Z axis			-0.9947 to  0.4924	
####fBodyGyro_std_X			frequency-based (FFT) body gyroscopic standard deviation along X axis		-0.9944 to  0.1966	
####fBodyGyro_std_Y			frequency-based (FFT) body gyroscopic standard deviation along Y axis		-0.9867 to  0.6462	
####fBodyGyro_std_Z			frequency-based (FFT) body gyroscopic standard deviation along Z axis		-0.395770 to  0.5225	
####fBodyGyro_meanFreq_X		frequency-based (FFT) body gyroscopic  of mean frequency along X axis		-0.66681 to  0.249209	
####fBodyGyro_meanFreq_Y		frequency-based (FFT) body gyroscopic  of mean frequency along Y axis		-0.50749 to  0.27314	
####fBodyGyro_meanFreq_Z		frequency-based (FFT) body gyroscopic  of mean frequency along Z axis		-0.9868 to  0.37707	
####fBodyAccMag_mean			frequency-based (FFT) body acceleration magnitude mean			-0.9876 to  0.5866	
####fBodyAccMag_std			frequency-based (FFT) body acceleration magnitude of standard deviation		-0.31234 to  0.1787	
####fBodyAccMag_meanFreq		frequency-based (FFT) body acceleration magnitude of mean frequency		-0.9940 to  0.43585	
####fBodyBodyAccJerkMag_mean		frequency-based (FFT) body  acceleration jerk magnitude mean			-0.9944 to  0.5384	
####fBodyBodyAccJerkMag_std		frequency-based (FFT) body  acceleration jerk magnitude of standard deviation	-0.12521 to  0.3163	
####fBodyBodyAccJerkMag_meanFreq	frequency-based (FFT) body  acceleration jerk magnitude of mean frequency	-0.9865 to  0.48809	
####fBodyBodyGyroMag_mean		frequency-based (FFT) body  gyroscopic magnitude mean			-0.9815 to  0.2040	
####fBodyBodyGyroMag_std		frequency-based (FFT) body  gyroscopic magnitude of standard deviation		-0.45664 to  0.2367	
####fBodyBodyGyroMag_meanFreq		frequency-based (FFT) body  gyroscopic magnitude of mean frequency		-0.9976 to  0.40952	
####fBodyBodyGyroJerkMag_mean		frequency-based (FFT) body  gyroscopic jerk magnitude mean			-0.9976 to  0.1466	
####fBodyBodyGyroJerkMag_std		frequency-based (FFT) body  gyroscopic jerk magnitude of standard deviation	-0.18292 to  0.2878	
####fBodyBodyGyroJerkMag_meanFreq	frequency-based (FFT) body  gyroscopic jerk magnitude of mean frequency	           0 to  0.42630	
