################################DATA FRAMES################################

### Creating data frames using the data.frame function.
# Create the data frame.
emp.data <- data.frame(
  emp_id = c (1:5), 
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


sales_csv$Order.Date <- as.Date(sales_csv$Order.Date,format='%m/%d/%Y')