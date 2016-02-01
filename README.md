#Getting and Cleaning Data Course Project 

##Introduction
This repository contains my submission for the Getting and Cleaning Data Course Project

The Codebook details all of the datafiles that are involved in the run_analysis.R Code.  

##Steps

1. The datafiles are downloaded from the Samsung repository, saved and unzipped into a new folder.
2. The datafiles names and descriptions are detailed in the CodeBook.md file.
3. The test and training datafiles are combined to form one superset.
4. The Superset's columns are filtered to only keep the columns with means or standard deviations.
5. The columns are relabelled to provide more human readable names.
6. The dataset is then summarized to provide one record per subject and activity with an average of all of the columns.
7. This summarized tidy dataset will be written to a tab-delimited file called tidy.txt, which is also found in this repository.

