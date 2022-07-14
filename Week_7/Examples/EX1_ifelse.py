# -*- coding: utf-8 -*-
"""
Created on Sat Jul  2 18:34:41 2022

@author: jlowh
"""
x = 10
y = 3
if x > y:
    print("x is greater than y")
elif x < y:
    print("x is less than y")
else:
    print("x is equal to y")
    
    
if x > y:
    if (x > 5) & (y < 5):
        print("x is less than 5 but greater than y, y is less than 5")
    else: 
        print('x is greater than y but less than 5')
    