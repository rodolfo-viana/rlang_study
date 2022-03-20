# Using square brackets

# Recap
x <- c(23, 1, 87, 54)
y <- seq(201, 250, 3)
z <- rep("Hi!", 3)

# Getting data by position w/ []

x[3] # OUTPUT: [1] 87
x[-1] # OUTPUT: [1]  1 87 54 (does not return the first value)
x[-3] # OUTPUT: [1] 23  1 54 (does not return the third value)
x[1:3] # OUTPUT: [1] 23  1 87 (returns values from index 1 to 3)
x[c(1, 3)] # OUTPUT: [1] 23 87 (returns values from index 1 and 3)
x[c(-1, -3)] # OUTPUT: [1]  1 54 (returns all values except index 1 and 3)
x[-1:-3] # OUTPUT: [1] 54 (returns all values except from index 1 to 3)