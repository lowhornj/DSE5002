# -*- coding: utf-8 -*-
"""
Created on Mon Jul  4 13:43:39 2022

@author: jlowh
"""

def factorial(num=5):#function definition, default value of 5
    #code block that calculates a factorial and assigns it to fact
    fact=1
    for i in range(1, num+1):#for loop for finding factorial
        fact=fact*i
    #return statement that returns an object from your function
    return fact    #return factorial 

print("function execution with default value: "+ str(factorial()))
print("function execution with argument provided: "+ str(factorial(num=4)))