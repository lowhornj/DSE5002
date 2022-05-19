##################################Functions##################################
# this is an example function
my_sum <- function(num1, num2) {
  # document your function here
  # what the function does
  # function inputs and outputs
  some_calculated_output <- (num1 + num2 )
  return(some_calculated_output) # return statement 
}

my_sum(50,30)

# Using default values for arguments
my_sum2 <- function(num1=20, num2=30) {
  # sum with default values for each input
  some_calculated_output <- (num1 + num2 )
  return(some_calculated_output) # return statement 
}

my_sum2()


# Using an ifelse to ensure inputs are numeric
my_sum3 <- function(num1, num2=30) {
  # sum two numbers
  # if else to handle non-numeric values
  if(is.numeric(num1)&is.numeric(num2)){
    output <- (num1 + num2)
  } else{
    stop("ERROR: Both inputs must be numeric")
  }
  
  return(output) # return statement 
}

my_sum3(num1="a",num2=4)
my_sum3(num1=3)

