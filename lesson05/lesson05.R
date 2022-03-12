# if statement

# Simple syntax:
# if(condition){
#   operation if condition is met
# } else {
#  operation if condition is not met
# }

x <- rnorm(1) # rnorm(n) generates a normal distribution with n observations
x # OUTPUT: [1] -0.139792219176963

if(x > 1){
  ans <- "x is greater than 1"
} else {
  ans <- "x is less than 1"
}
ans # OUTPUT: [1] "x is ess than 1"

# Nested syntax:
# if(condition){
#   operation if condition is met
# } else {
#  if(condition if previous condition is not met){
#    operation if condition is met
#  } else {
#    operation if condition is not met
#  }
# }

if(x > 1){
  ans2 <- "x is greater than 1"
} else {
  if(x < -1){
    ans2 <- "x is less than -1"
  } else {
    ans2 <- "x is between -1 and 1"
  }
}
ans2 # OUTPUT: [1] "x is between -1 and 1"

# Chained syntax:
# if(first condition){
#   operation if first condition is met
# } else if(second condition){
#   operation if second condition is met
# } else {
#   operation if none of above conditions is met
# }

if(x > 1){
  ans3 <- "x is greater than 1"
} else if(x < -1){
  ans3 <- "x is less than -1"
} else {
  ans3 <- "x is between -1 and 1"
}
ans3 # OUTPUT: [1] "x is between -1 and 1"