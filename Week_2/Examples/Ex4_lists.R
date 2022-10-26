# Create a list containing strings, numbers, vectors and a logical values.
list_data <- list("Male", "Female", c(35,42,5), FALSE, 220.5,
                  read.delim("Week_2/Data/sales.txt"
                             ,stringsAsFactors=FALSE
                             ,sep = "\t"
                  )
                  )

# Get the first list element
list_data[[1]]
# Get the third list element (a vector!)
list_data[[3]]
# Get the last element of the vector
list_data[[3]][3]

list_data[[6]]$City[1]

# We can also name the elements of the list
names(list_data) <- c("Male", "Female", "number_vector","logical", "numeric",'sales_data')
print(list_data)

list_data$sales_data$Ship.Mode[5]