
Getting and Cleaning Data
==========================
Getting and Cleaning Data Course Project
------------------------------------------
The goal of this course project is to prepare data for further analysis. The basis of the data is the Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors. 

See: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

**This repository contains:**
1. This README file, which will explain way the data collected and cleaned.
2. A CodeBook, which describes the variables, the data, and how it has been transformed.
3. The script for collecting and cleaning the data.

**Collecting and Cleaning the data**
The run_analysis.R script does the folowing things to the data:

* It downloads the .zip file, unzips it.
* Finds the relevant files, training and test.
* Merges the training and the test sets to create one data set.
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* Extracts only the measurements on the mean() and standard deviation() for each measurement.
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
* Writes the tidy data set to .txt, and shows it too.

Note: the script is written in such a way that it will download and create the tidy dataset in the working directory. If the necessary packages (downloader and reshape) are not yet installed, the script will download them. 
