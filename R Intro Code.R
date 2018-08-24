# Introduction to R Workshop Code
# -----------------------------------------
  
# Creating Values and vectors
  
a <- 4
b <- 5
x <- c(1:5)
x2 <- c(1,4,7,3,8)
# We can combine these two vectors into a data set using cbind
dat <- cbind(x, x2)
View(dat)

# -----------------------------------------

# Arithmetic Operators

# This code will run fine without using the assign arrow, but because we are not telling R where to put the results, it will just print it
# in the command line. If we specify the name of the object that we want R to creat (ex. Addition), it will store the output as an object
# of that name. 

(a + b)
Addition <- (a + b)
Subtraction <- (a - b)
Multiplication <- (a * b)
Division <- (a / b)
Exponentiation <- (a ^ b)


# -----------------------------------------
  
# Logical Operators
# Logical operators work like questions where you give R a statement and it evaluates if it is True or False

(a < b)
Lesser <- (a < b)
Lesser.Equal <- (a <= b)
Greater <- (a > b)
Greater.Equal <- (a >= b)
(a = b)
Exact.Equal <- (a == b)
Not.Equal <- (a != b)


# -----------------------------------------

# Changing the Working Directory - Example

# -----------------------------------------
# Reading in Data from a raw url file from github

My.Data <- read.csv("https://raw.githubusercontent.com/PrisonRodeo/PLSC504-2018-git/master/Data/Beer.csv", header = TRUE)

# -----------------------------------------

# Renaming or Creating a new dataset

New.Data <- My.Data

# -----------------------------------------

# Checking the names of the variables in your dataset 

names(New.Data)

# -----------------------------------------

# Viewing Data

View(New.Data)
#You can also double click the dataset name in the environment

# -----------------------------------------

# Creating a New variable

New.Data$ABV.Per.Dollar <- New.Data$alcohol/New.Data$price

# -----------------------------------------

# Deleting a Variable

New.Data$ABV.Per.Dollar <- NULL

# -----------------------------------------

# Useful R commands - adapted from http://www.sr.bham.ac.uk/~ajrs/R/r-function_list.html

# Math
log()      # natural log
exp()
sqrt()
sum()

#general
length(x)      # Return no. of elements in vector x
range(x)       # Returns the minimum and maximum of x
ls()           # List objects in current environment
cbind()        # Combine vectors by row/column
abs(x)         # The absolute value of "x"
seq(1,10,0.4)  # Generate a sequence (1 -> 10, spaced by 0.4)
sign(x)        # Returns the signs of the elements of x
sort(x)        # Sort the vector x
order(x)       # list sorted element numbers of x
options()      # Set options to control how R computes & displays results
view(My.Data)  # View dataset


# Graphics
help(package=graphics) # List all graphics functions
plot()                # Generic function for plotting
barplot()             # Produces a bar plot
par()                 # Set or query graphical parameters
points(x,y)           # Add another set of points to an existing graph
abline()              # Adds a straight line to an existing graph
lines()               # Join specified points with line segments
hist(x)               # Plot a histogram of x

# Statistics
help(package=stats)   # List all stats functions
cor.test()            # Perform correlation test
cumsum(); cumprod(); cummin(); cummax()   # Cumuluative functions for vectors
density(x)            # Compute kernel density estimates
loess(); lowess()     # Scatter plot smoothing
mad()                 # Calculate median absolute deviation
mean(x); weighted.mean(x); median(x); min(x); max(x); quantile(x)
rnorm(); runif()      # Generate random data with Gaussian/uniform distribution
sd()                  # Calculate standard deviation
summary(x)            # Returns a summary of x: mean, min, max etc.
t.test()              # Student's t-test
var()                 # Calculate variance
sample()              # Random samples & permutations
qqplot()              # quantile-quantile plot

# -----------------------------------------

# Installing Packages

install.packages("Amelia")

# -----------------------------------------

# Looking up function documentation

?mean

# -----------------------------------------

# Looking up vignettes

vignette()

vignette("amelia", package = "Amelia", lib.loc = NULL, all = TRUE)

# -----------------------------------------

# Clearing Out the Environment
