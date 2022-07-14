# -*- coding: utf-8 -*-
"""
Created on Sun Jun 26 14:41:16 2022

@author: jlowh
"""
#defining a dictionary
dict1 = {1: 'Apple', 2: 'Banana', 3: 'Orange'} 
print("Dictionary:") 
print(dict1)
print(dict1[1])
print(dict1[4])


#defining defaultdict
from collections import defaultdict
# Function to return a default
# values for keys that is not
# present
def def_value():
    return "Not Present"
      
# Defining the dict
dict2 = defaultdict(def_value)
dict2[1] = 'Apple'
dict2[2] = 'Banana'
dict2[3] = 'Orange'

print(dict2[1])
print(dict2[4])
print(dict2)

#merging dictionaries
dict1.update(dict2)
print(dict1)

#key-value methods
print(dict1.keys())
print(dict2.values())
print(dict2.items())

#get method
# without default
print(dict1.get(2))
print(dict1.get(5))
# with default
print(dict1.get(5 ,"5 is not a key"))

#pop method
dict1.pop(4)
print(dict1.items())


