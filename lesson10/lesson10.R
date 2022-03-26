# Coming up...

library(ggplot2)
qplot(data=diamonds, x=carat, y=price, 
      colour=clarity, facets=.~clarity)