x <- 10
y <- 2

test_vector <- c(2,5,6)
vec_2 <- c(FALSE,TRUE,FALSE)

x %in% test_vector | y %in% test_vector

test_vector[x == test_vector]
test_vector[y == test_vector]

test_vector[vec_2]


z = 6

logic_exp <- (x==test_vector)|(y==test_vector)|(z==test_vector)

length(logic_exp) == length(test_vector)

test_vector[  logic_exp   ]


test_vector[x== test_vector] | test_vector[y== test_vector] 