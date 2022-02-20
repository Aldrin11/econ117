#=======================================================
#
# Econ 117 Lessons on working directory, Spring 2022.
# Authors: Jaime Arellano-Bover and Vladimir Smirnyagin
#
# Notes: This is a simple script meant to understand the
#         concept of working directory, how to set it up,
#         how to load a data set from it and produce simple graphs
#========================================================

# Whenever you want to load a data set, R will need to know
# which is the folder in our computer where it should look for the
# file. When working with R, we set up a "working directory". The
# working directory is the folder in which R looks for files to
# load (and where it saves output such as figures). The questions
# below will familiarize you with using a working directory.
#===========
#  Tasks
#===========

# --- 1 ----
# Even if you haven't specified one yet, R has a default working directory.
# At any time you can figure out which is your current working directory
# using the getwd() command. Print your current working directory using
# the getwd() command and include it in your pset.
getwd()
# --- 2 ----
# As you can see in the previous question, the working directory is
# indexed by a path. A path is a sequence of folders that
# lead up to a given folder. Using the setwd() command, make the folder
# econ117_pset1_folder your new working directory.
# [hint: when writing the path inside the brackets of setwd()
# you should use quotation marks ""]
# [hint: In Rstudio you can choose Session -> Set Working Directory -> Choose Directory
# to choose a working directory by hand. This will also run the
# corresponding setwd() command.]
setwd("~/Desktop/econ117_pset1_folder")


# --- 3 ----
# Download the data file income_shares_USA.csv from the 
# Problem Set 1 page under assignments.  Move
# this file to the folder econ117_pset1_folder. The list.files()
# command allows you to list all the files in your working directory.
# Use the list.files() command to print the contents of your working
# directory and include it in your pset...!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
list.files()

# --- 4 ----
# Load the income_shares_USA.csv data set from Canvas using
# the read.csv() command. # [Hint: this can also be done with the "Import Dataset" 
# button in the "Environment" tab of Rstudio, and will generate the command as well.]
# [Hint: you can assign a name to you dataset by typing
# dataset_name <- read.csv(), where "dataset_name" is a name of your choice].
# Print the list of variable names
# of the data set using the names() command and include it in your pset...!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# DATASOURCE: https://wid.world/data/
data <- read.csv("income_shares_USA.csv")
names(data)


# --- 5 ---
# Using plot() command, produce a plot of the income share accounted for by the
# bottom 50% of the income distribution (variable p0p50) over years. Save the graph and 
# include it in your pset. [Hint: you can plot variable X of dataset "dataset_name"
# against variable Y by typing plot(dataset_name$Y,dataset_name$X)].
# [Hint: you can save the graph by clicking "Export" button located right above the graph.]
# Describe what happened with the share of income accounted for by the poorest Americans
# over the last 50 years (1 sentence).
plot(data$year,data$p0p50)
# In the last 50 years, the share of income accounted for by the poorest Americans has been decreasing.

# --- 6 ---
# Produce a plot of the income share accounted for by the
# top 1% of the income distribution (variable p99p100). Save the graph and 
# include it in your pset.  
# Describe what happened with the share of income accounted for by the richest Americans
# over the last 50 years (1 sentence).
plot(data$year,data$p99p100)
# In the last 50 years, the share of income accounted for by the richest Americans has been increasing. 

# --- 7 ---
# Using max 3 sentences, describe what you think happened with income inequality
# in the US over the last 50 years. Refer to the results you obtained in (5) and (6)
# while answering this question.

# I think that income inequality has been increasing over the last 50 years in the US according to the data. This 
# is because the poorest Americans have been receiving decreasing share of income while the richest Americans
# have been receiving increasing share of income. 
# --- 8 ---
# Save this R script with your answers to 1-7 above and submit it with pset 1.
# All done. 

