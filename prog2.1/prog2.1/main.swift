//
//  main.swift
//  prog2.1
//
//  Created by Aidan Scarlet on 7/18/18.
//  Copyright © 2018 Aidan Scarlet. All rights reserved.
//

import Foundation

//Create a new fraction object
var u: Fraction

//create and initialise a new object insatnce
u = Fraction(num: 2, den: 3)

//Show stae of the objects internal variables
print("u=\(u.description)")
print("decimal value of u=\(u.decimal)")

//Define and create a new instance of a Fraction object
var x: Fraction = Fraction(num: -5)

print("x=\(x.description)")
print("decimal value of x=\(x.decimal)")
