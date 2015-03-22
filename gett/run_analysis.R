library(dplyr)

##Log data
tests<-read.table("test/subject_test.txt",as.is=TRUE)
testx<-read.table("test/x_test.txt",as.is=TRUE)
testy<-read.table("test/y_test.txt",as.is=TRUE)
trainx<-read.table("train/x_train.txt",as.is=TRUE)
trainy<-read.table("train/y_train.txt",as.is=TRUE)
trains<-read.table("train/subject_train.txt",as.is=TRUE)
feat<-read.table("features.txt",as.is=TRUE)
alabel<-read.table("activity_labels.txt",as.is=TRUE)

## Combine the datasets with rbind()
##As step1 - Merges the x_test and x_train data to one data frame
ss=rbind(tests,trains)
xx=rbind(testx,trainx)  
yy=rbind(testy,trainy)

##Step4 - Labels the data set with descriptive variable names
	featt<-t(feat)                 ##feature transpose (column to row)
	featname<-featt[2,]
	names(xx)<-featname            ##extract feature to dataframe colnames

##Step2 - Extract only mean and std data  (std:33,mean:46)
	wanted<-c("mean","std")
	merge_extracted=xx[,grep(paste(wanted,collapse="|"),names(xx),value=TRUE)]

##Step3 - Add subject and activity column in the front of data frame
	##merge y_test, y_train, subject_test, subject_train to final dataframe
	merge_a=cbind(ss,yy,merge_extracted)
	names(merge_a)[1]="Subject"
	names(merge_a)[2]="Activity"
	
	##Replace Activity code numbers by terms
	merge_a$Activity[merge_a$Activity==1]="WALKING"
	merge_a$Activity[merge_a$Activity==2]="WALKING_UPSTAIRS"
	merge_a$Activity[merge_a$Activity==3]="WALKING_DOWNSTAIRS"
	merge_a$Activity[merge_a$Activity==4]="SITTING"
	merge_a$Activity[merge_a$Activity==5]="STANDING"
	merge_a$Activity[merge_a$Activity==6]="LAYING"

##STEP5 - calculate the mean for all of those rows that have the same Subject and Actvity ID
by_sa<-
	merge_a %>%
	group_by(Subject,Activity) %>%
	summarise_each(funs(mean))

##Write output (txt file) using write.table
	write.table(by_sa,file="Final output.txt",row.names=FALSE)
