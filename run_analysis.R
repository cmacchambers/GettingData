setwd("~/DataScience/GettingData")


fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,"./samsung.zip")
unzip("./samsung.zip")
list.files()
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
features <- read.table("./UCI HAR Dataset/features.txt")
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
train<-cbind(subject_train, y_train, X_train)
test<-cbind(subject_test, y_test, X_test)

##Combine train and test to get complete data set
total<-rbind(test, train)
## Select only Mean() or STD() columns as well as the first two columns
sel<-grep("mean\\(\\)|std\\(\\)", features[,2])+2
sel<-c(1,2,sel)
total1<- total[sel]

## Get Activity from Activity Labels File and merge
total3<- merge(total1, activity_labels, by.x="V1.1", by.y="V1" )
total3<- subset(total3, select = -c(1))
##first rearrange
setcolorder(total3, c(1, 68, 2:67))


##Change Variable Names - Use gsub to make variable names more readable.

library(data.table)
old1<-names(total3)
names<-features[feature_names,]
new<-names[,2]
new<-gsub("^fBody", "freq.Body", new)
new<-gsub("^tBody", "time.Body", new)
new<-gsub("^tGravity", "time.Gravity", new)
new<-gsub("Acc", "Acceleration", new)
new<-gsub("Gyro", "Gyroscope", new)
new<-gsub("Mag", "Magnitude", new)
new<-gsub("BodyBody", "Body", new)
new<-gsub("-", "", new)
new<-gsub("\\(\\)", "", new)
new<-gsub("mean", ".Mean", new)
new<-gsub("std", ".Std", new)
new<-gsub("X", "XAxis", new)
new<-gsub("Y", "YAxis", new)
new<-gsub("Z", "ZAxis", new)
new1<-c("Subject", "Activity", new)

##change old variable names to new variable names
setnames(total3, old=old1, new=new1)
total4<-total3

##last step is to create the average of each variable grouped by Subject and Activity

library(dplyr)
total4 %>%
  group_by(Subject, Activity)%>%
summarise_each(funs(mean)) %>%
write.table(file="./tidy.txt", row.names=FALSE)
  