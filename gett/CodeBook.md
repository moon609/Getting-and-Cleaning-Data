Code Book for Getting and Cleaning Data course project

#Variable 1 - Subject
	These represent of 30 volunteers within an age bracket of 19-48 years.
	Int.
	1-30

#Variable 2 - Activity
	These represent six activities for each subject
	Factor with 6 levels
		WALKING
		WALKING_UPSTAIRS
		WALKING_DOWNSTAIRS
		SITTING
		STANDING
		LAYING

 
#Variable 3-81 (Included signals of mean value and std value)
	##These signals were used to estimate variables of the feature vector for each pattern:  
	'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
	number for each variable
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
	##The set of variables that were estimated from these signals are: 
		mean(): Mean value
		std(): Standard deviation
		meanFreq(): Weighted average of the frequency components to obtain a mean frequency






