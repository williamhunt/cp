##Getting-and-Cleaning-Data-Course-Project
This is a repository for the Getting and Cleaning Data course project. This repository was created to satisfy the requirements of the course project for the Getting and Cleaning Data course taught by Jeff Leek, Roger D. Peng, and Brian Caffo at the John Hopkins Bloomberg School of Public Health. The purpose of the project is to demonstrate collecting, working with, and cleaning a data set resulting in tidy data that can be used for analysis.

The files contained in this repository are: *README.md - this file

run_analysis.R - the script for processing the raw data into a tidy data set for further analysis

CodeBook.md - the description of variables in the final tidy data set

Introduction

Wearable computing is an exciting area for data science right now. The raw data source for this project is sensor readings and calculations taken from a Samsung Galaxy S smartphone worning by 30 subjects in 6 activity category. More details of the original project can be found here:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The raw readings come from the accelerometer and gyroscope on the phone. Further variables are calculated and provided in the raw data set:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

What is done in this project is to reduce the variables for analysis to those involving means and standard deviations and further generate a tidy data set with averages of these measurements for each subject and activity category, i.e., 180 means for each variable included. There is flexibility in choosing the variables and I chose to include all variables that included mean or std (standard deviation) in the name. This provided a slightly more complex situation.

Description of the run_analysis.R code

This is a detailed description of the run_analysis.R code. The code is divided into 5 steps that match the course project requirements plus a reading data section.

Step 0: reading the source data
This script is written as if the source data were unzipped in the home directory with the root folder being "UCI HAR Dataset". A script to check for existence is not included here. It was run on a Windows machine with the double back slash, \ being required to separate files. On a Apple Unix machine these would need to be changed to a single forward slash, /. There were eight source files that were used in the process. The R variable names and file name are below. f - features.txt - this contains the names of all 561 measurements and calculated variables. Details of the ones used are in CodeBook.md. This file is used in Step 2 to create a logic vector to identify and label the columns of variables and reduce the set to 81 mean/std sensor-related variables. al - activity_labels.txt - this contains six activities of walking, walking upstairs, walking downstairs, sitting, standing, and laying. This file is used in Step 3 to replace numbers with descriptive activities names. s_te & s_tr - subject_test.txt & subject_train.txt - These are lists of numbers 1 to 30 identifying each subject with a set of measurements and becoming the values for the "subject" variable. They are bound with the other data in Step 1. y_te & y_tr - y_test.txt & y_train.txt - These are lists of numbers 1-6 identifying each activity. They are bound in Step 1 and later replaced with descriptive words. X_te & X_tr - X_test.txt & X_train.txt - These are the sensor-related data bound in Step 1.

*Step 1: create and merge data

We are not interested in the test/train distinction and merge all the data, one row per subject/activity/measurement and one column for each variable. This is done by first binding columns then binding the rows resulting in a 10299x563 full data frame of 2 integer and 561 numeric columns.

Step 2: extract only data with means & stds
This was done in 3 lines: making a column name vector, creating a logic vector identifying the subject, activity, and mean/std-related columns, and subsetting the full data frame with the logic vector

Step 3: name activities descriptively
This was done by sapplying the activity_label frame to the activity column to replace numbers with words.

Step 4: create descriptive variable names
This was done with the features names. First the logic vector subsetted all the names. Then the names were cleaned up, removing "("s & ")"s and changing "-"s to "_". Last, this was assigned as the names for the columns.

Step 5: create a tidy data set of averages for each activity and each subject
This involved using functions from the reshape2 and plyr libraries. There are several ways to create this data set. I chose the following 3 line process. Since the result is to be 30 subjects x 6 activities x means of 81 measurements, I first I converted the wide format of datMS to a long format with the melt function to set the stage for the automatic summarizing across these 180 subcategories. Then I used the ddply function to do the summarizing (calculating means) for all the 180 combinations. The means were calculated but this left all the variables in one column. I now needed to return to a wide form, making the 81 sensor-related variables into columns again, saving me from manually reorganizing. The dcast function did this for me.

Tidy Data Set Usage

The tidy data set, tidy.txt that was uploaded contains labels for the columns. The preferred way to upload this file into R is:

Move “tidy.txt” to your working directory In R, use read.table

tidy <- read.table(“tidy.txt”, header = TRUE)
You can change the path to “tidy.txt” or the name of the data.frame if you wish. If you don’t set header = TRUE then the column labels will be in the first row.

CodeBook.md

The CodeBook describes each of the variables found in the tidy.txt data frame. There are three types of variables used in this data set:

subject integer range 1-30

activity factor LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS

others numeric normalized -1 to +1

All of the numeric variables are means of measurements taken within the treatment class of subject X activity. They are derived from two sensors on the Samsung Galaxy S smartphone: an accelerometer and a gyroscope.

Acknowledgements

I would like to thank the diverse information starting with the lectures and discussion forums that have given me the pieces to put this together into a reasonable pattern. For this project David''s Course Project FAQ got me organized and on the right track:

https://class.coursera.org/getdata-006/forum/thread?thread_id=43

Another useful discussion on the forum is:

https://class.coursera.org/getdata-006/forum/thread?thread_id=89

Some outside sources I found particularly useful are:

Tidy Data by Hadley Wickham: http://vita.had.co.nz/papers/tidy-data.pdf

http://seananderson.ca/2013/10/19/reshape.html

https://github.com/seananderson

http://www.r-bloggepfr31da#GH12
rs.com/using-r-quickly-calculating-summary-statistics-from-a-data-frame/