# -*- coding: utf-8 -*-
"""
Created on Sun Jul  3 09:24:12 2022

@author: jlowh
"""

import string
letters = string.ascii_uppercase

letter_list1 = []
for letter in letters:
    letter_list1.append(letter)
    
letter_list2 = []
for i in range(len(letters)):
    letter_list2.append(letters[i])
    
letter_list1 == letter_list2

z = 1
while z < 10:
    z += z * 2
    print(z)
    
z = 1    
while z < 10:
    if (z % 2) == 0:
        z += 3
        print(z)
    else:
        z += 1
        print(z)
        
        
#nesting
list1 = [3,5,10,3,7,4,6]
list2 = [3,4,2,10,3,8,9]
work_on2 = 0
for i in range(len(list1)):
    for j in range(len(list2)):
        work_on2+=1
        if list1[i] == list2[j]:
            print("Both elements are the same. " + '\nlist1 indice is: '+ str(i) + '\n list2 indice is: ' + str(j) )
            
from collections import defaultdict            
work_on   = 0
hash_map = defaultdict(int)

for i in range(len(list1)):
    work_on += 1
    hash_map[i] = list1[i] in list2
    
for key, value in hash_map.items():
   if value == True:
        for j in range(len(list2)):
            work_on += 1
            if list1[key] == list2[j]:
                print("Both elements are the same. " + '\nlist1 indice is: '+ str(key) + '\n list2 indice is: ' + str(j))
   else:
        work_on += 1
        
print('nested loop number of steps: ' + str(work_on2))
print('hash map number of steps: ' + str(work_on))
                
            
            
