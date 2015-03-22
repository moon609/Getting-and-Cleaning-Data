Code Book for Getting and Cleaning Data course project
------------------------------------------------------------------------------------------
<h1> Variable 1 - Subject</h1>
<h3>These represent of 30 volunteers within an age bracket of 19-48 years. </h3>
Int.
1-30

<h1>Variable 2 - Activity</h1>
<h3>These represent six activities for each subject</h3>
Factor with 6 levels
* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

<h1>Variable 3-81 (Included signals of mean value and std value)</h1>
<h3>These signals were used to estimate variables of the feature vector for each pattern:'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.</h3>
number for each variable
* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag
<h3> The set of variables that were estimated from these signals are: </h3>
* mean(): Mean value
* std(): Standard deviation
