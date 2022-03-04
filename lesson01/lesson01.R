# Atomic data types

# numeric: integer
# By default, R takes number as double, not int.
# So L indicates the number should be integer.
x <- 2L
typeof(x) # OUTPUT: [1] "integer"

# Checking R's double-level standard...
y <- 2
typeof(y) # OUTPUT: [1] "double"

# numeric: double
z <- 2.5
typeof(z) # OUTPUT: [1] "double"

# complex (imaginary number)
a <- 3 + 2i
typeof(a) # OUTPUT: [1] "complex"

# character
b <- "R"
typeof(b) # OUTPUT: [1] "character"

# logical
# T or TRUE, F or FALSE
c <- T
typeof(c) # OUTPUT: [1] "logical"
d <- FALSE
typeof(d) # OUTPUT: [1] "logical"