# -*- coding: utf-8 -*-
"""
Created on Sun Jun 26 15:25:35 2022

@author: jlowh
"""

tuple1 = ('Apple','Banana','Orange')
list1 = [4,3,2,1,5]
list1.sort()
tuple2 = tuple(list1)
print(tuple1)
print(tuple2)
merged = tuple1 + tuple2
print(merged)