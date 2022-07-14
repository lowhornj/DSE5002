# -*- coding: utf-8 -*-
"""
Created on Sun Jun 26 13:45:06 2022

@author: jlowh
"""

list1 = [3,5,2,'Apple']
list2 = ['Orange',4,1]

print(list1)
print(list2)

#combining lists
list3 = list1 + list2
print(list3)

"""
Using append() and pop() we can append the string elements from list 1 to list 2
and the integer components to list 1
"""
print('list1: ',list1); print('list2: ',list2);print('___________________________')
list2.append(list1.pop(3))
print('list1: ',list1); print('list2: ',list2);print('___________________________')
list1.append(list2.pop(1))
print('list1: ',list1); print('list2: ',list2);print('___________________________')
list1.append(list2.pop(1))
print('list1: ',list1); print('list2: ',list2);

# now we can sort list1 and list 2
list1.sort()
print(list1)
list2.sort()
print(list2)

#removing items by their name
list2.append("Rootbeer")
print(list2)
list2.remove('Rootbeer')
print(list2)

#length of lists
len(list1)

len(list3) == (len(list1) + len(list2))

#inserting elements at a specific position
list2.insert(1, "banana")
print(list2)

#subsetting + light string manipulation
"""
we made a mistake in our previous example and forgot to capitalize the first
letter of banana!
To fix this we are first going to have to subset our list using bracket notation
then we will have to subset the string in the same manner to fix the first 
character of banana. The string method .upper() will convert the character to
uppercase. Since upper works on all elements we must add back the remaining 
characters to the string.
Remember in Python EVERYTHING is zero based! 

"""
list2[1] = list2[1][0].upper() +  list2[1][1:]
print(list2)

