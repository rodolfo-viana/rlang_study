# Vectorized ops

# Vector arithmetics

x <- seq(1,12)
y <- seq(13,24)
x + y # OUTPUT: [1] 14 16 18 20 22 24 26 28 30 32 34 36

z <- seq(24,28)
x + z
# OUTPUT:
# [1] 25 27 29 31 33 30 32 34 36 38 35 37
# Warning message:
#   In x + z : longer object length is not a multiple of shorter object length
#
# Note: as z vector is smaller than x, z keeps 
# repeating after its end until x reachs the end. 
# This is called "recycling vector"
#
# 25 = 1 + 24
# 27 = 2 + 25
# 29 = 3 + 26
# 31 = 4 + 27
# 33 = 5 + 28 -> z ends here
# 30 = 6 + 24 -> z restarts at index 1
# 32 = 7 + 25
# ...

# Vectors can be arguments to functions...
# f(vector)
# ...or returns from functions...
# vector <- f()

# -- Looping vectors --

a <- rnorm(5) # generates a 5-random-elem vector

print(a[1]) # prints elem specifying its index...
print(a[2]) # ...and again...
print(a[3]) # ...and again...

# Not to repeat, we can loop two ways:

# Conventional programming loop (by indexing)
for(i in 1:5){ 
  print(a[i])
}

# R-specific programming loop (by elem in vector itself)
for(j in a){ 
  print(j)
}

# -- Vectorized vs de-vectorized ops --
# proc.time() idea taken from 
# https://stats.oarc.ucla.edu/r/faq/how-can-i-time-my-code/

N <- 10000000
q <- rnorm(N)
w <- rnorm(N)

# Vectorized approach (faster)
t1 <- proc.time()
e <- q * w
proc.time() - t1
# OUTPUT:
# usuário   sistema decorrido 
# 0.11      0.02      0.13

# De-vectorized approach (slower)
r <- rep(NA, N) # empty vector for memory allocation
t2 <- proc.time()
for(m in 1:N){
  r[m] <- q[m] * w[m]
}
proc.time() - t2
# OUTPUT:
# usuário   sistema decorrido 
# 0.62      0.03      0.66 

e == r # OUTPUT: [1] TRUE * 10 million