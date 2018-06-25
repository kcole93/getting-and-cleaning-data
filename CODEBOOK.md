# Codebook
This codebook identifies and provides a description of the data fields in the file `tidy.txt` produced by the script `run_analysis.R`.

## Identifiers
* `subject`: The ID of the test subject (there are a total of thirty test subjects in this study).
* `activity`: The activity being performed by the test subject as the corresponding measurements were taken.

## Measurements

The following measurements are included in the tidy data set and correspond to a measurement which comes from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. Each of the final characters (X, Y & Z) stand for one of the three axes along which measurements were taken. 

In order to increase readability from the raw data, the labels' abbreviations were expanded and dashes were removed. In addition, the abbreviations t -> time, f -> frequency.


* `timeBodyAccMeanX`
* `timeBodyAccMeanY`
* `timeBodyAccMeanZ`
* `timeBodyAccStandardDeviationX`
* `timeBodyAccStandardDeviationY`
* `timeBodyAccStandardDeviationZ`
* `timeGravityAccMeanX`
* `timeGravityAccMeanY`
* `timeGravityAccMeanZ`
* `timeGravityAccStandardDeviationX`
* `timeGravityAccStandardDeviationY`
* `timeGravityAccStandardDeviationZ`
* `timeBodyAccJerkMeanX`
* `timeBodyAccJerkMeanY`
* `timeBodyAccJerkMeanZ`
* `timeBodyAccJerkStandardDeviationX`
* `timeBodyAccJerkStandardDeviationY`
* `timeBodyAccJerkStandardDeviationZ`
* `timeBodyGyroMeanX`
* `timeBodyGyroMeanY`
* `timeBodyGyroMeanZ`
* `timeBodyGyroStandardDeviationX`
* `timeBodyGyroStandardDeviationY`
* `timeBodyGyroStandardDeviationZ`
* `timeBodyGyroJerkMeanX`
* `timeBodyGyroJerkMeanY`
* `timeBodyGyroJerkMeanZ`
* `timeBodyGyroJerkStandardDeviationX`
* `timeBodyGyroJerkStandardDeviationY`
* `timeBodyGyroJerkStandardDeviationZ`
* `timeBodyAccMagnitudeMean`
* `timeBodyAccMagnitudeStandardDeviation`
* `timeGravityAccMagnitudeMean`
* `timeGravityAccMagnitudeStandardDeviation`
* `timeBodyAccJerkMagnitudeMean`
* `timeBodyAccJerkMagnitudeStandardDeviation`
* `timeBodyGyroMagnitudeMean`
* `timeBodyGyroMagnitudeStandardDeviation`
* `timeBodyGyroJerkMagnitudeMean`
* `timeBodyGyroJerkMagnitudeStandardDeviation`
* `frequencyBodyAccMeanX`
* `frequencyBodyAccMeanY`
* `frequencyBodyAccMeanZ`
* `frequencyBodyAccStandardDeviationX`
* `frequencyBodyAccStandardDeviationY`
* `frequencyBodyAccStandardDeviationZ`
* `frequencyBodyAccMeanFreqX`
* `frequencyBodyAccMeanFreqY`
* `frequencyBodyAccMeanFreqZ`
* `frequencyBodyAccJerkMeanX`
* `frequencyBodyAccJerkMeanY`
* `frequencyBodyAccJerkMeanZ`
* `frequencyBodyAccJerkStandardDeviationX`
* `frequencyBodyAccJerkStandardDeviationY`
* `frequencyBodyAccJerkStandardDeviationZ`
* `frequencyBodyAccJerkMeanFreqX`
* `frequencyBodyAccJerkMeanFreqY`
* `frequencyBodyAccJerkMeanFreqZ`
* `frequencyBodyGyroMeanX`
* `frequencyBodyGyroMeanY`
* `frequencyBodyGyroMeanZ`
* `frequencyBodyGyroStandardDeviationX`
* `frequencyBodyGyroStandardDeviationY`
* `frequencyBodyGyroStandardDeviationZ`
* `frequencyBodyGyroMeanFreqX`
* `frequencyBodyGyroMeanFreqY`
* `frequencyBodyGyroMeanFreqZ`
* `frequencyBodyAccMagnitudeMean`
* `frequencyBodyAccMagnitudeStandardDeviation`
* `frequencyBodyAccMagnitudeMeanFreq`
* `frequencyBodyBodyAccJerkMagnitudeMean`
* `frequencyBodyBodyAccJerkMagnitudeStandardDeviation`
* `frequencyBodyBodyAccJerkMagnitudeMeanFreq`
* `frequencyBodyBodyGyroMagnitudeMean`
* `frequencyBodyBodyGyroMagnitudeStandardDeviation`
* `frequencyBodyBodyGyroMagnitudeMeanFreq`
* `frequencyBodyBodyGyroJerkMagnitudeMean`
* `frequencyBodyBodyGyroJerkMagnitudeStandardDeviation`
* `frequencyBodyBodyGyroJerkMagnitudeMeanFreq`

## Activity Labels

* `WALKING`: subject was walking as the measurements were taken
* `WALKING_UPSTAIRS`: subject was ascending stairs as the measurements were taken
* `WALKING_DOWNSTAIRS`: subject was descending stairs as the measurements were taken
* `SITTING`: subject was sitting as the measurements were taken
* `STANDING`: subject was standing as the measurements were taken
* `LAYING`: subject was lying down as the measurements were taken

## Transformations

Only variables including a mean or standard deviation were used in calculating the average of each variable for each activity for each subject. All other raw data was disregarded.