#Getting and Cleaning Data Course Project 

##Introduction
This repository contains my submission for the Getting and Cleaning Data Course Project

The Codebook details all of the datafiles that are involved in the run_analysis.R Code.  

##Steps

The datafiles are downloaded from the Samsung repository, saved and unzipped into a new folder.
The datafiles names and descriptions are detailed in the CodeBook.md file.
The test and training datafiles are combined to form one superset.
The Superset's columns are filtered to only keep the columns with means or standard deviations.
The columns are relabelled to provide more human readable names.
The dataset is then summarized to provide one record per subject and activity with an average of all of the columns.
This summarized tidy dataset will be written to a tab-delimited file called tidy.txt, which is also found in this repository.

