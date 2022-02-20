#=======================================================
#
# Econ 117 Spring 2022
# Author: Nicholas Ryan & John Eric Humphries
#         edited January 2022 by Vladimir Smirnyagin
#
# Notes: This script is a simple script to practice opening
#        and running R scripts (i.e. files that end in .R)
#        in Rstudio And a few exercises to get used to Rstudio.
#
#========================================================

#==========
# Simple variable assignment and math
#==========
x <- 2      # define variable x and set it equal to 2
y <- 3      # define variable y and set it equal to 3
z <- x + y  # define z as the sum of x and y
print(z)    # print your results

#==========
# Generating Random Numbers
#==========
a <- rnorm(100)  # generate a vector of 100  random numbers
head(a)          # show the first 6 entries in a
b <- rnorm(100)  # generate another vector of 100 random numbers


draws <- cbind(a,b) # creates a matrix containg the a and b vectors as columns.

#========
# Checking plots
#========
plot(draws)     # plot draws.


#===========
#  Additional Tasks
#===========

#  --- 1 ----
#  After you have run this code, take a screen shot (or a photo) of your screen showing Rstudio,
#        this code, and the plot it produced

# --- 2 ---
# create a new vector "d" of 100 random numbers
# Print the the first 6 values using the head() command and include them in your pset
# create a new vector "e" that contains the numbers 1 to 100 (hint, use ":" or the "seq()" commands)
d <- rnorm(100)
print(head(d))
e <- seq.int(1,100)
print(e)

# --- 3 ---
# create a new matrix "draws2" containing  the vectors "d" and "e" as columns.
# Print the last 6 rows using the tail() command and include them in your pset
draws2 <- cbind(c(d),c(e))
print(tail(draws2))

# --- 4 ---
# plot draws 2, save the figure and include it in your pset.
# Note you can save or copy the file using the "Export" button above the plot.       
plot(draws2)

# --- 5 ---
# Replace the third entry in the vector "d" with the number "100"
# Print the first five values of d and include in your pset
d[3] <- 100
print(d[1:5])
# --- 6 ---
# Save this R script with your answers to 1-5 above and submit it with pset 1.

