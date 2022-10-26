####################################Loops####################################

for(i in 1:10) { # Head of for-loop
  
  x1 <- i^2      # Code block
  print(x1)      # Print results
}

x2 <- c("Samsung", "Apple", "Meta", "Google", "Microsoft")  # Create character vector

for(i in x2) {     # Loop over character vector
  
  print(paste("The name", i, "consists of", nchar(i), "characters."))
}

# appending to a vector
x3 <- numeric()  
for(i in 1:10) {    # Head of for-loop
  x3 <- c(x3, i^2)  # Code block
}
print(x3)


# nested for loop (bad bad bad 
# --> need to using hashing to eliminate complexity)
x4 <- character()                                          # Create empty data object
loop_work <- 0
for(i in 1:5) {                                            # Head of first for-loop
  for(j in 1:5) {                                          # Head of nested for-loop
    loop_work <- loop_work + 1
    x4 <- c(x4, paste(LETTERS[i], letters[j], sep = "_"))  # Code block
  }
}

### A better way using hashing --> this is on almost every tech interview
library(hash)

h <- hash()
x5 <- c()
hash_work <- 0

for(i in 1:5){
  hash_work <- hash_work + 1
  h[LETTERS[i]] <- letters[1:5]
}

for(j in 1:length(h)){
  hash_work <- hash_work + 1
  x5 <- c(x5,paste(names(h)[j],h[[LETTERS[j]]],sep='_'))
}
print(hash_work)
print(loop_work)
#make sure we just made the same two vectors
all(x4 == x5)

# for loop with break statement
for(i in 1:10) {                  # Head of for-loop
  x6 <- i^2                       # Code block
  print(x6)                       # Print results
  if(i >= 5) {                    # Conditionally stop for-loop
    break                         # Using break-statement
  }
}

# for loop with next statement (skip)
for(i in 1:10) {                    # Head of for-loop
  if(i %in% c(1, 3, 5, 7, 9)) {           # Conditionally skip iteration
    next                            # Using next-statement
  }
  x7 <- i^2                         # Code block
  print(x7)                         # Print results
}

# iterating over a dataframe
iris_new1 <- iris   
for(i in 1:ncol(iris_new1)) {                              # Head of for-loop
  if(grepl("Width", colnames(iris_new1)[i])) {             # Logical condition
    iris_new1[ , i] <- iris_new1[ , i] + 1000              # Code block
  }
}
head(iris_new1)


#################################While Loops#################################

i <- 1 # set the initial value
while (i < 6) {   # Head of while loop + test condition
  print(i)        # Code block
  i = i+1         # Code block (make sure you add 1 or the condition will not be met!)
}

####################################Apply####################################

# row sums for the 1st 5 rows and 1st 4 columns of IRIS
apply(iris[1:5,1:4],MARGIN=1,FUN=sum)

# col means for the 1st 4 columns of IRIS
apply(iris[,1:4],MARGIN=2,FUN=mean)

# Custom function for apply
square <- function(x){
  x^2
}

# row & col custom function for the 1st 5 rows and 1st 4 columns of IRIS
apply(iris[1:5,1:4],MARGIN=c(1,2),FUN=square)

iris[1:5,1:4]
