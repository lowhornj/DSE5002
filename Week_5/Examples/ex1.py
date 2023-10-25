# -*- coding: utf-8 -*-
"""
Created on Sat Oct  1 23:22:20 2022

@author: jlowh
"""

from statsmodels.datasets.fertility.data import load_pandas
import numpy as np
df = load_pandas().data
df.columns
np.round(np.mean(df['1963']),2)
