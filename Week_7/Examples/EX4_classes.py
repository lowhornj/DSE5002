# -*- coding: utf-8 -*-
"""
Created on Mon Jul  4 14:10:07 2022

@author: jlowh
"""

class Vehicle:
    def __init__(self, brand, model, type):
        self.brand = brand
        self.model = model
        self.type = type
        self.gas_tank_size = 14
        self.fuel_level = 0

    def fuel_up(self):
        self.fuel_level = self.gas_tank_size
        print('Gas tank is now full.')

    def drive(self):
        print(f'The {self.model} is now driving.')
        
        
vehicle_object = Vehicle('Honda', 'Ridgeline', 'Truck')
print("The gas tank has "+str(vehicle_object.fuel_level)+" gallons")
vehicle_object.fuel_up()
print("The gas tank has "+str(vehicle_object.fuel_level)+" gallons")
vehicle_object.drive()