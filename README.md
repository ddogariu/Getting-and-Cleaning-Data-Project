The R script run_analysis.R that does the following:

1.Merges the training and the test sets to create one data set.

2.Extracts only the measurements on the mean and standard deviation for each measurement. 

3.Uses descriptive activity names to name the activities in the data set

4.Appropriately labels the data set with descriptive variable names. 

5.Creates a second, independent tidy data set with the average of each variable for each  activity and each 
subject.

The archive containig the initial raw database was downloaded from: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
then the archive was unzipped and the working directory was changed to UCI HAR Dataset  which is the folder
containig the data.


The data from UCI HAR Dataset were read in 8 data frames using read.table() 

Then the activities in the data sets were renamed using descriptive activity names using colnames()
 
Two distinct data sets (testData, for test and trainData for training) were created  by  merging   all test 
data on one hand and all the training data on the other, using cbind().
 
The training and the test data sets obtained above were merged in order to create  one data set, mergedData
using rbind().

The measurements on the mean and standard deviation for each measurement were  extracted  using  grep,   by  
searching  for  the "std"  and "mean" strings in all the column names of the mergedData data  set  and  the 
mstdData data set was obtained.

The new data set was appropriately labelled with descriptive variable using gsub().

The last  data set, a cleaned  and  tidy  data  set, tidyData  was  created from  the previous one by using 
aggregate(). The tidy data set contains the average of each variable for each  activity and each subject. 

Finally, were created two data file: tidyData.csv and tidyData.txt.
