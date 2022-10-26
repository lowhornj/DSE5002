# -*- coding: utf-8 -*-
"""
Created on Sun Oct  2 11:51:02 2022

@author: jlowh
"""

set1 = {2,1,3,5,4,5}
set2 = set(['Orange','Apple','Banana','Apple'])

print(set1)
print(set2)
print(set1[1])

##################################

set2.add('Pineapple')
print(set2)

set1.update([3,7,2,6])
print(set1)


#remove and discard
set1.remove(7)
print(set1)
set1.remove(7)


set1.discard(7)
print(set1)
set1.discard(6)
print(set1)


set1.union(set2)

set3 = {2,10,2,22,45}
set1.intersection(set3)

set1.difference(set3)

set1.symmetric_difference(set3)

