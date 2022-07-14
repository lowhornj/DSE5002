# -*- coding: utf-8 -*-
"""
Created on Sat Jul  9 16:20:59 2022

@author: jlowh
"""

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
df = pd.read_csv('Week_8/Data/sales.csv')
df['Order Date'] = pd.to_datetime(df['Order Date'], format='%m/%d/%Y')
df['Ship Date'] = pd.to_datetime(df['Ship Date'], format='%m/%d/%Y')
#scatter plot with linear model
iris = sns.load_dataset('iris')
sns.lmplot(x='sepal_width'
           ,y='sepal_length'
           ,hue='species'
           ,data=iris)

plt.title('Sepal Width vs Sepal Length')
plt.ylabel('Sepal Length')
plt.xlabel('Sepal Width')


ax = sns.lineplot(x='Order Date', y='Profit'
             ,data=df)
plt.xticks(rotation=45)
ax.yaxis.set_major_formatter('${x:1.0f}')
plt.title('Profit by Order Date')
plt.ylabel('Profit')
plt.xlabel('Order Date')