library(tidyr)

#the relig_income dataset comes with the tidyr package
data(relig_income)
head(relig_income) 

#wide to long
#notice how the relig_income data has income bands over each column
#this format is typical of excel books but does not make for usable data
#in a programming language
#to fix it we use the tidyr function pivot_longer to transform from wide to long
#more examples: https://tidyr.tidyverse.org/articles/pivot.html

relig_long <- relig_income %>% 
  pivot_longer(!religion, names_to = "income", values_to = "count")
head(relig_long)

#long to wide (very rare unless you are presenting summary tables in excel like formt)

#fish_ecounters also comes with the tidyr package
data(fish_encounters)
head(fish_encounters)

fish_wide <- fish_encounters %>%
  pivot_wider(names_from = station, values_from = seen)
head(fish_wide)

#handling NA values

#simply drop them
fish_encounters %>%
  pivot_wider(names_from = station, values_from = seen) %>%
  drop_na()

#or replace them
#simply drop them
#we need to use dplyr's mutate_at to select columns 4 to 12 and
#tidyr's replace_na to replace all of those columns with 0
wide_fish_na <- fish_encounters %>%
  pivot_wider(names_from = station, values_from = seen) %>%
  dplyr::mutate_at(c(4:12), ~replace_na(.,0))
head(wide_fish_na)


#splitting cells
sales <- read.csv("Week_4/Data/sales.csv", stringsAsFactors=FALSE)

sales <- sales %>%
  separate(Customer.Name,
           sep=' ',
           into=c('First.Name','Last.Name')
           ,extra='merge')
head(data.frame(sales$First.Name[1:5],sales$Last.Name[1:5]))

#conversely, we can combine these columns back together
sales <- sales %>%
  unite(col = 'Customer.Name', First.Name:Last.Name,sep='_')

head(sales$Customer.Name)