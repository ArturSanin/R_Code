# Description: This is my attempt at the Wolfram Challenge Square Sum, 
# which you can find at the following link: 
# https://challenges.wolframcloud.com/challenge/square-sum


square_sum <- function(n) {
    # param n: Positive integer.
    # return: Iteratively summing and squaring the numbers 1 to n.
    suppressWarnings({
      if (is.na(as.numeric(n)) ||(n != as.integer(n))) {
        return("Argument must be a positive integer.")
      } else if (!(n > 0)) {
        return("Argument must be a positive integer.") 
      } else {
        result <- 0
        for (i in 1:n) {
          result <- (result + i) ** 2 
        }
        return(result)
      }
    })
}
  


# Testing square_sum.

for (i in 0:9) {
  print(square_sum(i + 1)) 
}

print(square_sum("string"))
print(square_sum(-1))
print(square_sum(1.23))