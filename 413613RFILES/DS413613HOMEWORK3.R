
library(purrr)
library(tidyverse)
library(stringr)

#1

# Use the  R function nrow to confirm that the iris data frame has 150 rows. Then 
# use  and show R code that features a map function to confirm that the iris data
# frame has 150 rows.
 nrow(iris)

map_dbl(iris, length)

# Each column of the iris data frame has a unique number of values or objects. For 
# example the column Sepal.Length has 150 values but 35 of them are unique. Use and
# show R code that features a map function to find the number of unique values or 
# objects for each column of the iris data frame.

map_dbl(iris, ~ length(unique(.x)))

#2
# Use and show R code that features a nested loop that will produce the  3 by 5
# matrix shown below.
z <- matrix( nrow = 3, ncol = 5)
for (m in 1:3) {
  for (n in 1:5) {
    z[m, n] <- (n - m)
  }
}
print(z)

#3 
X <- list(12, 14, 15, 18, 19)
Mean <- list(8, 14, 20, 22, 30)
sd <- list(10, 18, 28, 34, 40)

# use and show R coding that features a map function to iteratively find maximum
# values across the lists given above 

pmap_dbl(list(x,y,z), max)

# In statistics, a z score indicates the standard deviation distance between the 
# mean and a specific value of the data set. What formula is used to find a z score?

# Use and show R coding that features a map function to iteratively find z scores
# across the lists given above.

pmap_dbl(list(X,Mean,sd), function(first, second, third) ((first - second)/third))

# The test statistic for a population mean is given by the formula ((X - mean)/s/sqrt(n))
# Use and show R coding that features a map function to iteratively find test statistics 
# for population means across the lists given above.

pmap_dbl(list(X,Mean,sd), function(first, second, third) ((first - second)*sqrt(3))/third)

#4

V = c(10,15,17,22,32,38,42)

# Another purr package function is the keep( ) function. Research, explore, and use the
# keep( ) function to extract all number from the vector V given above that are less 
# than 20
  
  keep(V, ~ .x < 20)
  
# Another purr package function is the discard( ) function. Research, explore, and use the
# discard( ) function to eliminate all number from the vector V given above that are less 
# than 20
  
  discard(V, ~ .x < 20)

  
# Another purr package function is the safely( ) function. Research, explore, and apply
# the safely( )function to the given vector below as illustrated.
  
  U = list(10,15,"mary",22,32,"james",42)
  
  map(U, safely(~ .x + 15))
  
# In four or five sentences, explain the specific output for this problem and how the
# definition and the application of the safely( ) function is used.
  

q()
y