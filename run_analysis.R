setInternet2(TRUE)
url<- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
download.file(url,destfile="data.zip",mode="wb")
#unzip the file
unzip("data.zip")
#unzip and vizualize the files in the archive:
unzip("data.zip",list=TRUE)
#changing the working directory to UCI HAR Dataset
setwd("UCI HAR Dataset")
#1.Merges the training and the test sets to create one data set.
#read test data
subjectTest<- read.table('test/subject_test.txt', header=FALSE)
xTest<- read.table('test/X_test.txt', header=FALSE)
yTest<- read.table('test/y_test.txt', header=FALSE) 
#read train data
subjectTrain<- read.table('train/subject_train.txt', header=FALSE)
xTrain<- read.table('train/X_train.txt', header=FALSE)
yTrain<- read.table('train/y_train.txt', header=FALSE) 
#read other data 
features<- read.table('features.txt',header=FALSE); 
activity<- read.table('activity_labels.txt',header=FALSE); 
#3.Uses descriptive activity names to name the activities in the data set
head(activity)
colnames(activity)<- c('activityId','activityType');
head(features)
colnames(features)<- c('featureId','featureType');
head(subjectTest)
colnames(subjectTest)<- 'subjectId'
head(subjectTrain)
colnames(subjectTrain)<- 'subjectId'
head(xTest)
colnames(xTest)<- features[,2] 
colnames(xTrain)<- features[,2]
head(xTest)
colnames(yTest)<- 'activityId'
colnames(yTrain)<- 'activityId'
#create test data set
testData<- cbind(yTest,subjectTest,xTest)
#create train data set
trainData<- cbind(yTrain,subjectTrain,xTrain)
#merge test and train data sets
mergedData<- rbind(trainData,testData)
#2.Extracts only the measurements on the mean and standard deviation for each measurement.
mstdData<- mergedData[,c(1,2,grep('std', colnames(mergedData)), grep('mean', colnames(mergedData)))]
#4.Appropriately labels the data set with descriptive variable names. 
colNames<- colnames(mstdData)
for (i in 1:length(colNames)) 
{
    colNames[i]<- gsub('\\(', '', colNames[i])
    colNames[i]<- gsub('\\)', '', colNames[i])
    colNames[i]<- gsub('-', '', colNames[i])
    colNames[i]<- gsub('mean', 'Mean', colNames[i])
    colNames[i]<- gsub('std', 'Std', colNames[i])
    colNames[i]<- gsub('BodyBody', 'Body', colNames[i])
}
colnames(mstdData)<- colNames

#5.Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
tidyData<- aggregate(mstdData[,3:ncol(mstdData)],list(Subject=mstdData$subjectId, Activity=mstdData$activityId), mean)
#write data in a .csv file
write.csv(file= 'tidyData.csv', tidyData)
#write data in a .txt file
write.table(tidyData, 'tidyData.txt', row.names= TRUE, sep= '\t')
