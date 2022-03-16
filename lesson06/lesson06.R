# Law of large numbers

# Definition
# As the number of identically distributed, randomly generated 
# variables increases, their sample mean (average) approaches 
# their theoretical mean.
#
# Considering normal distribution, taking a sample of n 
# observations, 50% of them are > 0 and 50% are < 0, as follows:
#
# - 34.1% is between 0 and 1σ, 34.1% is between 0 and -1σ,
# - 13.6% is between 1σ and 2σ, 13.6% is between -1σ and -2σ,
# - 2.1% is between 2σ and 3σ, 2.1% is between -2σ and -3σ,
# - 0.1% is > 3σ, 0.1% is < -3σ.
#
# Let's check if it is true by taking the percentage of numbers
# between -1 and 1. The hypothesis is: the larger the sample, 
# the closer to 68.2%:
#
# - for a sample of 100 observations:

n <- 100
v <- rnorm(n)
within_range <- 0
for(i in v){
  if(i >= -1 & i <= 1){
    within_range <- within_range + 1
  }
}
within_range / n # OUTPUT: [1] 0.72

# - for a sample of 1,000 observations:

n <- 1000
v <- rnorm(n)
within_range <- 0
for(i in v){
  if(i >= -1 & i <= 1){
    within_range <- within_range + 1
  }
}
within_range / n # OUTPUT: [1] 0.678

# - for a sample of 10,000 observations:

n <- 10000
v <- rnorm(n)
within_range <- 0
for(i in v){
  if(i >= -1 & i <= 1){
    within_range <- within_range + 1
  }
}
within_range / n # OUTPUT: [1] 0.6806

# - for a sample of 100,000 observations:

n <- 100000
v <- rnorm(n)
within_range <- 0
for(i in v){
  if(i >= -1 & i <= 1){
    within_range <- within_range + 1
  }
}
within_range / n # OUTPUT: [1] 0.68125

# Practical example:
# A coin has heads and tails. For a single coin tossing, the odds 
# of getting heads are 50%; the odds of getting tails, 50% as well.
#
# The law of large numbers prompts that as the number of trials 
# of a random process increases (coin tossing multiple times), 
# the percentage difference between the expected and actual values 
# goes to zero (it comes closer to 50% to heads and 50% to tails).

# Scenario
# Let's suppose we are trying to measure coin tosses. We have 10 
# tosses (n). We will use rnorm() to get a vector (v) of n elements.
# If number < 0, it is tails; if number >= 0, it is heads. 

n <- 10
v <- rnorm(n)
tails <- 0
heads <- 0
for(i in v){
  if(i < 0){
    tails <- tails + 1
  } else {
    heads <- heads + 1
  }
}
tails / n # OUTPUT: [1] 0.3
heads / n # OUTPUT: [1] 0.7

# Now let's try the same, but with 1,000 tosses.

n <- 1000
v <- rnorm(n)
tails <- 0
heads <- 0
for(i in v){
  if(i < 0){
    tails <- tails + 1
  } else {
    heads <- heads + 1
  }
}
tails / n # OUTPUT: [1] 0.458
heads / n # OUTPUT: [1] 0.542

# At last, let's try it with 10,000 tosses.

n <- 10000
v <- rnorm(n)
tails <- 0
heads <- 0
for(i in v){
  if(i < 0){
    tails <- tails + 1
  } else {
    heads <- heads + 1
  }
}
tails / n # OUTPUT: [1] 0.4978
heads / n # OUTPUT: [1] 0.5022