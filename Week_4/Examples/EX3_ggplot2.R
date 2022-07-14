library(ggplot2)
library(dplyr)

sales <- read.csv("Week_4/Data/sales.csv", stringsAsFactors=FALSE)

#basic example
sales <- sales %>%
  mutate(Order.Date = as.Date(Order.Date,'%m/%d/%Y'),
         Ship.Date = as.Date(Ship.Date, '%m/%d/%Y')
         )

#simple bar chart
ggplot(sales,aes(x=Category)) +
  geom_bar()

#axis labels & title with a custom scale & color
ggplot(sales,aes(x=Category,fill=Category)) +
  geom_bar() +
  labs(x='Categories',
       y='Transactions',
       title='Transactions by Category') +
  scale_y_continuous(breaks=c(1500,2000,4000,6000))

#multiple layers, faceting, and adjusting labels
ggplot(sales) +
  geom_point(aes(x=Sales,y=Profit,color=Discount)) +
  geom_smooth(method='lm',aes(y=Profit,x=Sales)) +
  facet_grid(.~Category) +
  scale_y_continuous(labels=scales::dollar_format()) +
  theme(axis.text.x = element_text(angle = 45)) +
  labs(title='Sales to Profit')
