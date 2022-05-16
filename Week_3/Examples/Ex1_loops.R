#################################Loops#################################

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


# nested for loop (bad bad bad --> need to using hashing to eliminate complexity)

x4 <- character()                                          # Create empty data object
loop_work <- 0

for(i in 1:5) {                                            # Head of first for-loop
  
  for(j in 1:5) {                                          # Head of nested for-loop
    loop_work <- loop_work + 1
    x4 <- c(x4, paste(LETTERS[i], letters[j], sep = "_"))  # Code block
  }
}

print(loop_work)

### A better way using hashing --> this is on almost every tech interview
hash_table <- list()
hash_work <- 0
x5 <- c()
for( i in 1:5 ) {
  hash_work <- hash_work + 1
  hash_table[[LETTERS[i]]] <- letters[1:5]
}

for(j in 1:length(hash_table)){
  hash_work <- hash_work + 1
  x5 <- c(x5,paste(names(hash_table[j]),hash_table[[j]],sep='_'))
}

print(hash_work)

#make sure we just made the same two vectors
all(x4 == x5)

