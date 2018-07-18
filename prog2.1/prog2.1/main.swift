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
u = Fraction.init()

//Show stae of the objects internal variables
print("u=\(u.num)/\(u.den)")

//Change the vlaues of object's internal variables
u.num = 2
u.den = 3

//SHow state of internal variables
print("u=\(u.num)/\(u.den)")

//Define and create a new instance of a Fraction object
var x: Fraction = Fraction()
x.num = -5
x.den = 1

print("x=\(x.num)/\(x.den)")
