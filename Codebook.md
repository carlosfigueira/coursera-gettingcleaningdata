Samsung UCI summarized data set
===============================

The dataset ([tidy_dataset.txt](./tidy_dataset.txt)) was created based on the [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) from the [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/index.html). It was an experiment carried out with a group of 30 volunteers within an age bracket of 19-48 years, where each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, wthe experiment captured several measurements (3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz), and the obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

For this dataset, we merged the training and test data into a single dataset, and calculated the averages for all mean and standard deviation-related measurements, grouped by subject and activity. The end result contains 68 columns (variables), which are described below:

* **subject**: A number (1-30) for which subject the observation belongs
* **activity**: A factor with six possible values, indicating the activity performed by the subject, with the following values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
* **tBodyAcc_mean_X**: Mean of the x-axis value of the body acceleration
* **tBodyAcc_mean_Y**: Mean of the y-axis value of the body acceleration
* **tBodyAcc_mean_Z**: Mean of the z-axis value of the body acceleration
* **tBodyAcc_std_X**: Standard deviation of the x-axis value of the body acceleration
* **tBodyAcc_std_Y**: Standard deviation of the y-axis value of the body acceleration
* **tBodyAcc_std_Z**: Standard deviation of the z-axis value of the body acceleration
* **tGravityAcc_mean_X**: Mean of the x-axis value of the gravity acceleration
* **tGravityAcc_mean_Y**: Mean of the y-axis value of the gravity acceleration
* **tGravityAcc_mean_Z**: Mean of the z-axis value of the gravity acceleration
* **tGravityAcc_std_X**: Standard deviation of the x-axis value of the gravity acceleration
* **tGravityAcc_std_Y**: Standard deviation of the y-axis value of the gravity acceleration
* **tGravityAcc_std_Z**: Standard deviation of the z-axis value of the gravity acceleration
* **tBodyAccJerk_mean_X**: Mean of the x-axis of the body acceleration jerk signal, calculated based on the body and gravity acceleration
* **tBodyAccJerk_mean_Y**: Mean of the y-axis of the body acceleration jerk signal, calculated based on the body and gravity acceleration
* **tBodyAccJerk_mean_Z**: Mean of the z-axis of the body acceleration jerk signal, calculated based on the body and gravity acceleration
* **tBodyAccJerk_std_X**: Standard deviation of the x-axis of the body acceleration jerk signal, calculated based on the body and gravity acceleration
* **tBodyAccJerk_std_Y**: Standard deviation of the y-axis of the body acceleration jerk signal, calculated based on the body and gravity acceleration
* **tBodyAccJerk_std_Z**: Standard deviation of the z-axis of the body acceleration jerk signal, calculated based on the body and gravity acceleration
* **tBodyGyro_mean_X**: Mean of the x-axis value of the body gyroscope
* **tBodyGyro_mean_Y**: Mean of the y-axis value of the body gyroscope
* **tBodyGyro_mean_Z**: Mean of the z-axis value of the body gyroscope
* **tBodyGyro_std_X**: Standard deviation of the x-axis value of the body gyroscope
* **tBodyGyro_std_Y**: Standard deviation of the y-axis value of the body gyroscope
* **tBodyGyro_std_Z**: Standard deviation of the z-axis value of the body gyroscope
* **tBodyGyroJerk_mean_X**: Mean of the x-axis of the body gyroscope jerk signal, calculated based on the body and gravity gyroscope
* **tBodyGyroJerk_mean_Y**: Mean of the y-axis of the body gyroscope jerk signal, calculated based on the body and gravity gyroscope
* **tBodyGyroJerk_mean_Z**: Mean of the z-axis of the body gyroscope jerk signal, calculated based on the body and gravity gyroscope
* **tBodyGyroJerk_std_X**: Standard deviation of the x-axis of the body gyroscope jerk signal, calculated based on the body and gravity gyroscope
* **tBodyGyroJerk_std_Y**: Standard deviation of the y-axis of the body gyroscope jerk signal, calculated based on the body and gravity gyroscope
* **tBodyGyroJerk_std_Z**: Standard deviation of the z-axis of the body gyroscope jerk signal, calculated based on the body and gravity gyroscope
* **tBodyAccMag_mean**: Mean of the magnitude of the body acceleration (calculated using the Euclidean norm)
* **tBodyAccMag_std**: Standard deviation of the magnitude of the body acceleration (calculated using the Euclidean norm)
* **tGravityAccMag_mean**: Mean of the magnitude of the gravity acceleration (calculated using the Euclidean norm)
* **tGravityAccMag_std**: Standard deviation of the magnitude of the gravity acceleration (calculated using the Euclidean norm)
* **tBodyAccJerkMag_mean**: Mean of the magnitude of the body acceleration jerk signal (calculated using the Euclidean norm)
* **tBodyAccJerkMag_std**: Standard deviation of the magnitude of the body acceleration jerk signal (calculated using the Euclidean norm)
* **tBodyGyroMag_mean**: Mean of the magnitude of the body gyroscope (calculated using the Euclidean norm)
* **tBodyGyroMag_std**: Standard deviation of the magnitude of the body gyroscope (calculated using the Euclidean norm)
* **tBodyGyroJerkMag_mean**: Mean of the magnitude of the body gyroscope jerk signal (calculated using the Euclidean norm)
* **tBodyGyroJerkMag_std**: Standard deviation of the magnitude of the body gyroscope jerk signal (calculated using the Euclidean norm)
* **fBodyAcc_mean_X**: Mean of the Fast Fourier Transform (FFT) values obtained from the x-axis value of the body acceleration
* **fBodyAcc_mean_Y**: Mean of the FFT values obtained from the y-axis value of the body acceleration
* **fBodyAcc_mean_Z**: Mean of the FFT values obtained from the z-axis value of the body acceleration
* **fBodyAcc_std_X**: Standard deviation of the FFT values obtained from the x-axis value of the body acceleration
* **fBodyAcc_std_Y**: Standard deviation of the FFT values obtained from the y-axis value of the body acceleration
* **fBodyAcc_std_Z**: Standard deviation of the FFT values obtained from the z-axis value of the body acceleration
* **fBodyAccJerk_mean_X**: Mean of the FFT values obtained from the x-axis value of the body acceleration jerk signal
* **fBodyAccJerk_mean_Y**: Mean of the FFT values obtained from the y-axis value of the body acceleration jerk signal
* **fBodyAccJerk_mean_Z**: Mean of the FFT values obtained from the z-axis value of the body acceleration jerk signal
* **fBodyAccJerk_std_X**: Standard deviation of the FFT values obtained from the x-axis value of the body acceleration jerk signal
* **fBodyAccJerk_std_Y**: Standard deviation of the FFT values obtained from the y-axis value of the body acceleration jerk signal
* **fBodyAccJerk_std_Z**: Standard deviation of the FFT values obtained from the z-axis value of the body acceleration jerk signal
* **fBodyGyro_mean_X**: Mean of the FFT values obtained from the x-axis value of the body gyroscope
* **fBodyGyro_mean_Y**: Mean of the FFT values obtained from the y-axis value of the body gyroscope
* **fBodyGyro_mean_Z**: Mean of the FFT values obtained from the z-axis value of the body gyroscope
* **fBodyGyro_std_X**: Standard deviation of the FFT values obtained from the x-axis value of the body gyroscope
* **fBodyGyro_std_Y**: Standard deviation of the FFT values obtained from the y-axis value of the body gyroscope
* **fBodyGyro_std_Z**: Standard deviation of the FFT values obtained from the z-axis value of the body gyroscope
* **fBodyAccMag_mean**: Mean of the FFT values obtained from the magnitude of the body acceleration (calculated using the Euclidean norm)
* **fBodyAccMag_std**: Standard deviation of the FFT values obtained from the magnitude of the body acceleration (calculated using the Euclidean norm)
* **fBodyBodyAccJerkMag_mean**: Mean of the FFT values obtained from the magnitude of the body acceleration jerk signal (calculated using the Euclidean norm)
* **fBodyBodyAccJerkMag_std**: Standard deviation of the FFT values obtained from the magnitude of the body acceleration jerk signal (calculated using the Euclidean norm)
* **fBodyBodyGyroMag_mean**: Mean of the FFT values obtained from the magnitude of the body gyroscope (calculated using the Euclidean norm)
* **fBodyBodyGyroMag_std**: Standard deviation of the FFT values obtained from the magnitude of the body gyroscope (calculated using the Euclidean norm)
* **fBodyBodyGyroJerkMag_mean**: Mean of the FFT values obtained from the magnitude of the body gyroscope jerk signal (calculated using the Euclidean norm)
* **fBodyBodyGyroJerkMag_std**: Standard deviation of the FFT values obtained from the magnitude of the body gyroscope jerk signal (calculated using the Euclidean norm)
