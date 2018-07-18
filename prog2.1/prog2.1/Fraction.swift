//
//  Fraction.swift
//  prog2.1
//
//  Created by Aidan Scarlet on 7/18/18.
//  Copyright © 2018 Aidan Scarlet. All rights reserved.
//

import Foundation

/**
 Represents a number as a fraction
 */
class Fraction {
    
    //STORED PROPERTIES
    
    var num: Int; // Numerator
    var den: Int; // Denominator
    
    //INITIALISERS
    
    /**
        Default initialiser
 
        Numerator set to 0 and enominator set to 1.
     */
    init(){
        //Setting numerator to 0 and
        //denominator to 1 is equivalent
        //to setting the fraction to zero
        self.num = 0
        self.den = 1
    }
    
    /**
        Designated initialiser
 
        Numerator and denominator vlaues are passed in the arguments of the initialiser
 
        - parameter num: Fraction's numerator
        - parameter den: Farction's denominator
     */
    init(num : Int, den : Int){
        //Check the denominator...
        assert(den != 0, "Denominator cannot be zero")
        
        self.num = num
        self.den = den
    }
}
