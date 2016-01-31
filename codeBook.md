#Run_Anaysis.R Code Book

##Description
This Code book describes the transformations that occurred on Samsung Wearable Computing Data.  The data has been collected from Samsung Galaxy S smartphones’ accelometers.

##Data Source
This is derived from the Samsung Wearable Computing Dataset [here:] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

##Code Inputs:  
*	activity_labels.txt  Shows information about the variables used on the feature vector
*	features.txt		Describes the various features.
*	X_test.txt		Test Set
*	y_test.txt		Test Labels
*	X_train.txt		Training Set
*	y_train.txt		Training Labels
*	subject_train.txt	Identifies the subject performing the activities
*	subject_test.txt	Identifies the subject performing the activities

##Data Transformations:
The original data sets had 561 variables.  The subject, training and test datasets were combined to create a dataset with all of the information.  As per the assignment, only the records depicting the mean and standard deviation were selected (66 variables).
The original features names have been renamed to be readable using a series of gsub function calls.  Finally, each of the subject and activities have each of the features summarized to show the average.  
The resulting dataset is called 


##Variables in the Tidy Data Set

NOTE: All measurement variables (3 through 68) are floating point numbers that
represent averages of normalized data ranging from -1 to 1. These are averages
of the original measurements for each subject and activity.

'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions


1. "Subject" 					Subject Identifier                               
2. "Activity"                               	Activity Identifier
3. "time.BodyAcceleration.MeanXYZAxis"    	Time Domain - Body Acceleration Mean per X-Y-Z Axis measured in standard gravity units 'g'    
4. "time.BodyAcceleration.StdXYZAxis"         	Time Domain - Body Acceleration Standard Deviation per X-Y-Z Axis measured in standard gravity units 'g'
5. "time.GravityAcceleration.MeanXYZAxis" 	Time Domain - Gravity Acceleration Standard Deviation per X-Y-Z Axis measured in standard gravity units 'g'    
6. "time.GravityAcceleration.StdXYZAxis"	Time Domain - Gravity Acceleration Standard Deviation per X-Y-Z Axis measured in standard gravity units 'g'      
7. "time.BodyAccelerationJerk.MeanXYZAxis"	Time Domain - Body Acceleration Jerk Mean per X-Y-Z Axis measured in standard gravity units 'g'    
8. "time.BodyAccelerationJerk.StdXYZAxis"	Time Domain - Body Acceleration Jerk Standard Deviation per X-Y-Z Axis measured in standard gravity units 'g'     
9. "time.BodyGyroscope.MeanXYZAxis"           	Time Domain - Body Gyroscope Mean per X-Y-Z Axis measured in radians/second.
10. "time.BodyGyroscope.StdXYZAxis"    		Time Domain - Body Gyroscope Standard Deviation per X-Y-Z Axis measured in radians/second.        
11. "time.BodyGyroscopeJerk.MeanXYZAxis"  	Time Domain - Body Gyroscope Jerk Mean per X-Y-Z Axis measured in radians/second.     
12. "time.BodyGyroscopeJerk.StdXYZAxis" 	Time Domain - Body Gyroscope Jerk Mean per X-Y-Z Axis measured in radians/second.       
13. "time.BodyAccelerationMagnitude.Mean" 	Time Domain - Body Acceleration Magnitude Mean per X-Y-Z Axis measured in standard gravity units 'g'   
14. "time.BodyAccelerationMagnitude.Std"	Time Domain - Body Acceleration Magnitude Mean per X-Y-Z Axis measured in standard gravity units 'g'     
15. "time.GravityAccelerationMagnitude.Mean"	Time Domain - Gravity Acceleration Magnitude Mean per X-Y-Z Axis measured in standard gravity units 'g'  
16. "time.GravityAccelerationMagnitude.Std"  	Time Domain - Gravity Acceleration Magnitude Standard Deviation per X-Y-Z Axis measured in standard gravity units 'g' 
17. "time.BodyAccelerationJerkMagnitude.Mean"	Time Domain - Body Acceleration Jerk Magnitude Mean per X-Y-Z Axis measured in standard gravity units 'g'
18. "time.BodyAccelerationJerkMagnitude.Std" 	Time Domain - Body Acceleration Jerk Magnitude Standard Deviation per X-Y-Z Axis measured in standard gravity units 'g'
19. "time.BodyGyroscopeMagnitude.Mean"      	Time Domain - Body Gyroscope Magnitude Mean per X-Y-Z Axis measured in radians/second. 
20. "time.BodyGyroscopeMagnitude.Std"  		Time Domain - Body Gyroscope Magnitude Standard Deviation per X-Y-Z Axis measured in radians/second.      
21. "time.BodyGyroscopeJerkMagnitude.Mean"   	Time Domain - Body Gyroscope Jerk Magnitude Mean per X-Y-Z Axis measured in radians/second.
22. "time.BodyGyroscopeJerkMagnitude.Std" 	Time Domain - Body Gyroscope Jerk Magnitude Standard Deviation per X-Y-Z Axis measured in radians/second.  
23. "freq.BodyAcceleration.MeanXYZAxis"    	Freq Domain - Body Acceleration Mean per X-Y-Z Axis measured in standard gravity units 'g'        
24. "freq.BodyAcceleration.StdXYZAxis"   	Freq Domain - Body Acceleration Standard Deviation per X-Y-Z Axis measured in standard gravity units 'g'      
25. "freq.BodyAccelerationJerk.MeanXYZAxis" 	Freq Domain - Gravity Acceleration Standard Deviation per X-Y-Z Axis measured in standard gravity units 'g'   
26. "freq.BodyAccelerationJerk.StdXYZAxis"  	Freq Domain - Gravity Acceleration Standard Deviation per X-Y-Z Axis measured in standard gravity units 'g'    
27. "freq.BodyGyroscope.MeanXYZAxis"        	Freq Domain - Body Gyroscope Mean per X-Y-Z Axis measured in radians/second.   
28. "freq.BodyGyroscope.StdXYZAxis"        	Freq Domain - Body Gyroscope Standard Deviation per X-Y-Z Axis measured in radians/second.       
29. "freq.BodyAccelerationMagnitude.Mean"    	Freq Domain - Body Acceleration Magnitude Mean per X-Y-Z Axis measured in standard gravity units 'g' 
30. "freq.BodyAccelerationMagnitude.Std"    	Freq Domain - Body Acceleration Magnitude Standard Deviation per X-Y-Z Axis measured in standard gravity units 'g'  
31. "freq.BodyAccelerationJerkMagnitude.Mean"	Freq Domain - Body Acceleration Jerk Magnitude Mean per X-Y-Z Axis measured in standard gravity units 'g'
32. "freq.BodyAccelerationJerkMagnitude.Std"	Freq Domain - Body Acceleration Jerk Magnitude Standard Deviation per X-Y-Z Axis measured in standard gravity units 'g' 
33. "freq.BodyGyroscopeMagnitude.Mean"     	Freq Domain - Body Gyroscope Magnitude Mean per X-Y-Z Axis measured in radians/second.  
34. "freq.BodyGyroscopeMagnitude.Std"   	Freq Domain - Body Gyroscope Magnitude Standard Deviation per X-Y-Z Axis measured in radians/second.     
35. "freq.BodyGyroscopeJerkMagnitude.Mean" 	Freq Domain - Body Gyroscope Jerk Magnitude Mean per X-Y-Z Axis measured in radians/second.  
36. "freq.BodyGyroscopeJerkMagnitude.Std"  	Freq Domain - Body Gyroscope Jerk Magnitude Standard Deviation per X-Y-Z Axis measured in radians/second.
