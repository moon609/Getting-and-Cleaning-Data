# Project Description:
  
* This is a Course Project from Getting and Cleaning Data course at Johns Hopkins on Coursera.
  
* The purpose of this project is to prepare tidy data that can be used for later analysis.
  
* We download the raw data, extract only the measurements on the mean and standard deviation, and average each variable for each activity and each subject 


# Study design and data processing:

<h3>Collection of the raw data</h3>

* The raw data is from the Human Activity Recognition database. 

* The recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.


<h3>Data source</h3>

* A full description is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

* Here are the data for the project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 


# Creating the tidy datafile:

<h3>Package used in this project</h3>

dplyr

<h3>Guide to create the tidy data file</h3>
  
<br>1. Download the data</br>
  
* Download the raw data 
  
* Change the working direction in R to the right folder
  
* Read all files to R with function "read.table()"
  
<br>2. Merges the training and test sets to create one data set</br>
  
* Merges the x_test and x_train data to one data frame
  
* Rbind y_test and y_train

* Rbind subject_test and subject_train
  
<br>3. Labels the data set with descriptive variable names</br>
  
* Transpose feature file (column to row)
  
* Labels the data frame with feature file
 
<br>4. Extracts only the measurements on the mean and standard deviation for each measurement</br>
  
* Extract the interested column with function "grep()"
  
<br>5. Use descriptive activity names to name the activities in the data set</br>
  
* Cbind subject and activity data to extract dataframe from Step4
  
* Replace activity code numbers by terms
  
<br>6. Average each variable for each activity and each subject</br>
  
* calculate the mean with function "group_by()" and "summarise_each()"
  
<br>7. Write output (txt file) </br>
  
* use function "write.table()" to output a txt file for the project submission.
	 

# The dataset includes the following files:
  
* README.md
  
* CodeBook.md: Describes the variables, the data, and any transformations or work that performed to clean up the data  
  
* run_analysis.R: use to prepare tidy data 
  
* Final output.txt




