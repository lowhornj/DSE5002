fib  <- function(n)
{
  if (length(n) > 1) return(sapply(n, fib)) 
  if (n == 1) return(1) 
  if (n == 2) return(1) 
  return(fib(n-1)+fib(n-2)) 
}
catalan <- function(n) {
  cat <- vector("numeric", length(max(n)) + 1)
  for (i in 0:max(n)) {
    if (i == 0) {
      cat[i+1] <- 1
    } else {
      cat[i+1] <- ((4*i - 2)*cat[i])/(i + 1)
    }
  }
  return(cat[n + 1])
}


fib_vec <- fib(1:10)

#slicing
fib_vec[1] #will slice the first element
fib_vec[1:10] #will slice the first 10 elements
fib_vec[c(1,5,10)]  #will slice the 1st, 5th, and 10th elements

#returning indices
which(fib_vec == 8) #return the indices where fib_vec equals 8
which.max(fib_vec) #return the indices wher the maximum value exists
which.min(fib_vec) #return the indices wher the minimum value exists

#removing elements
fib_vec[-8] #remove the 8th element
fib_vec[-1:-10] #remove the first through 10th element
fib_vec[c(-1,-5,-10)] #remove the first, 5th, and 10th element

#initilize catalan vector
catalan_vec <- catalan(1:10)

#vector arithmetic
fib_vec + catalan_vec#vector addition
catalan_vec - fib_vec #vector subtraction
catalan_vec * fib_vec#vector multiplication
catalan_vec/fib_vec#vector division
c(catalan_vec,fib_vec)#combining vectors

#other functions
any(catalan_vec==1) #any of the values equals 1
all(catalan_vec==1) #all of the values qequals 1
sort(catalan_vec,decreasing=TRUE)#vector sorting
length(catalan_vec) #find the length of the vector
rep(catalan_vec,2) #repeat the vector 2 times
seq(from=1,to=10,by=2) #create a vector from 1 to 10 by 2