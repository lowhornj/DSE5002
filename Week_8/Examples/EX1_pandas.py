# -*- coding: utf-8 -*-
"""
Created on Fri Jul  8 13:45:35 2022

@author: jlowh
"""

import pandas as pd
import numpy as np
#importing data
df = pd.read_csv('Week_8/Data/sales.csv')

#extracting data types
df.dtypes

#changing data types:
df['Order Date'] = pd.to_datetime(df['Order Date'], format='%m/%d/%Y')
df['Ship Date'] = pd.to_datetime(df['Ship Date'], format='%m/%d/%Y')
df.dtypes


### Subsetting

#selecting columns - dplyr select()
#single column or list of columns (double brackets)
print(df['City'].head())
print(df[['Country','City']].head())

#subsetting rows
cat_df = df[df["Category"] =='Furniture']
cat_df.shape

profit_df = df[df["Profit"] < 0 ]
profit_df.shape

#multiple conditionals
furniture_profit_df = df[(df["Category"] =='Furniture') & (df["Profit"] < 0)]
furniture_profit_df.shape


#subset of both rows and columns (we need to use .loc on the initial df as shown)

row_col_df = df.loc[(df["Category"] =='Furniture') & (df["Profit"] < 0),'State']
row_col_df.shape

#using column/row indices
df.iloc[5:10,13:15]

#creating new columns
df[['StateAbbreviation','Year','OrderID']] = df['Order ID'].str.split('-',expand=True)
df[['StateAbbreviation','Year','OrderID']].head()

#dropping columns
df = df.drop(['StateAbbreviation','Year','OrderID'],axis=1)

### data transformation
#long to wide
wide_df = df.pivot(columns=['Category'],values=['Sales','Profit'])
wide_df.head()
# flattening the double index
wide_df2 = wide_df.copy()
wide_df2.columns = wide_df2.columns.to_flat_index()
wide_df2.head()

#wide to long
long_df = wide_df.melt(value_name='Value',var_name=['Metric','Category'])
long_df.head()


### aggregation
# single variable, signle aggregation method
df.groupby('Category')['Profit'].mean()

#multiple aggregation methods
df.groupby('Category')['Profit'].agg([np.mean, np.median, np.std])

#aggregating with custom functions
def group_range(x):
    return x.max() - x.min()
df.groupby(['Category'])['Profit'].apply(group_range)

#multiple variables
df.groupby('Category').agg({'Profit': ['median', 'std'], 'Sales': 'median'})

#named multi-agg
df.groupby(['Category','Sub-Category']).agg(
    median_profit=('Profit', np.median),
    median_sales=('Sales', np.median),
    
)


### Merging data

df1 = pd.DataFrame({'a': ['foo', 'bar'], 'b': [1, 2]})
df2 = pd.DataFrame({'a': ['foo', 'baz'], 'c': [3, 4]})

print(df1)
print(df2)

#full join
df1.merge(df2, how='outer', on='a')
# inner join
df1.merge(df2, how='inner', on='a')
#left join
df1.merge(df2, how='left', on='a')