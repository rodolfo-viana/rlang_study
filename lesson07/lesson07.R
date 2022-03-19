# Vector

# An array; a sequence of data elements of the same basic type.
# Actually, in R, even a single number or character is a vector
# (of lenght 1).
#
# Graphic examples:
#
# idx    1    2    3    4    5    6
#     -------------------------------
#     | 11 | 56 | 98 | 21 | 70 | 31 | 
#     -------------------------------
# A numeric vector of lenght 6
#
# idx    1     2     3      4
#     ---------------------------
#     | 'Z' | 'f' | '7' | 'yes' | 
#     ---------------------------
# A character vector of lenght 4

SomeVector <- c(3, 45, 56, 732) # c() combines elements into vector
SomeVector # OUTPUT: [1]   3  45  56 732
is.numeric(SomeVector) # OUTPUT: [1] TRUE
is.integer(SomeVector) # OUTPUT: [1] FALSE (for numbers are stored as double)
is.double(SomeVector) # OUTPUT: [1] TRUE

IntVector <- c(3L, 45L, 56L, 732L)
IntVector # OUTPUT: [1]   3  45  56 732
is.numeric(IntVector) # OUTPUT: [1] TRUE
is.integer(IntVector) # OUTPUT: [1] TRUE

CharVec <- c('a', 'b', 'HELLO', '7', 'Rodolfo')
CharVec # OUTPUT: [1] "a"       "b"       "HELLO"   "7"       "Rodolfo"
is.numeric(CharVec) # OUTPUT: [1] FALSE
is.character(CharVec) # OUTPUT: [1] TRUE

# seq()
# seq() generates sequencial data
# seq(x,y) works like x:y, but may accept steps

1:15 # OUTPUT: [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
seq(1, 15) # OUTPUT: [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
seq(1, 15, 2) # OUTPUT: [1]  1  3  5  7  9 11 13 15

# rep()
# rep() replicates a value n times

rep(3, 5) # OUPUT: [1] 3 3 3 3 3
rep(TRUE, 3) # OUTPUT: [1] TRUE TRUE TRUE

# Replicating vector:
x <- seq(1, 5)
rep(x, 3) # OUTPUT: [1] 1 2 3 4 5 1 2 3 4 5 1 2 3 4 5