x <- 10
y <- 2

test_vector <- c(2,5,6)


x %in% test_vector | y %in% test_vector

test_vector[x == test_vector]
test_vector[y == test_vector]

test_vector[]

test_vector[(x==test_vector)|(y==test_vector)|(z==test_vector)]

test_vector[x== test_vector] | test_vector[y== test_vector] 