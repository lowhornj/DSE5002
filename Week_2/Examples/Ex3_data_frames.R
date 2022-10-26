################################DATA FRAMES################################

### Creating data frames using the data.frame function.
# Create the data frame.
emp.data <- data.frame(
  emp_id = c(1:5), 
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25), 
  
  start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",
                         "2015-03-27")),
  stringsAsFactors = FALSE
)
# Summarize the data frame.			
summary(emp.data) 

# Get the structure of the data frame.
str(emp.data)

###########################################################################

### Creating data frames by reading a file

# Read csv files (comma separated value)
sales_csv <- read.csv("Week_2/Data/sales.csv"
                      ,stringsAsFactors=FALSE
                      )
# Read tab delimited files "\t" or any other file that is delimited
sales_tab_delim <- read.delim("Week_2/Data/sales.txt"
                              ,stringsAsFactors=FALSE
                              ,sep = "\t"
                              )

# Read excel sheets
sales_excel <- readxl::read_excel("Week_2/Data/sales.xlsx"
                    ,sheet = "sales"
                    )

# Summarize the data
summary(sales_csv)

# Get the structure
str(sales_csv)

########################### Characters/Strings #############################

# Splitting strings to create two new columns
## String split fixed will split the product id column into three columns in a matrix by the '-'
temp_char <- stringr::str_split_fixed(string=sales_csv$Product.ID,pattern='-',n=3)
# To recreate our Product ID we just paste the individual vectors together with the '-' seperator
sales_csv$Product <- paste(temp_char[,1], temp_char[,2],sep='-')
# Our product number is now just the third column of the matrix
sales_csv$Product.Number <- temp_char[,3]

cat(
  sales_csv$Product.ID[1]
  ,sales_csv$Product[1]
  ,sales_csv$Product.Number[1]
  ,sep="\n\r"
)

################################### Factors ##################################
# Check whether Region is a factor & find the unique values. 
is.factor(sales_csv$Region)
unique(sales_csv$Region)

# Convert the Region column to a factor and extract the levels
sales_csv$Region <- factor(sales_csv$Region)
is.factor(sales_csv$Region)
levels(sales_csv$Region)

# Create a basic barplot
barplot(table(sales_csv$Region))

# What if we wanted to change the order of the categories in the barplot?
# Use factors and reorder the levels
sales_csv$Region <- factor(sales_csv$Region
                           ,levels=c('West','East','Central','South')
                           )
levels(sales_csv$Region)

barplot(table(sales_csv$Region))

################################### Dates ##################################
# Convert the Order.Date string to Date format

# Get the structure of the date column
str(sales_csv$Order.Date)

# Check to see if Order.Date is a date
inherits(sales_csv$Order.Date
         , c("Date")
         )

# Using the table in our notes, convert the character to a date obeject. 
sales_csv$Order.Date <- as.Date(sales_csv$Order.Date
                                ,format='%m/%d/%Y'
                                )

# Check to see if our conversion worked
inherits(sales_csv$Order.Date
         , c("Date")
         )
str(sales_csv$Order.Date)


###################subsetting############

sales_csv[1:10,5]

first_class_df = sales_csv[(sales_csv$Ship.Mode=='First Class')|(sales_csv$City=='Henderson') ,]


