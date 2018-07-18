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
    
    //COMPUTED PROPERTIES
    
    /**
        Converts fraction to a Float value
 
        - returns: Float Decimal value of the fraction
     */
    var decimal: Float {
        get {
            //num and den are type of Int, therefore,
            //they need to be explicitly converted to Floats
            return Float(self.num)/Float(self.den);
        }
    }
    
    /**
        Converts object to a string description
 
        - returns : String String representation of a fraction
     */
    var description: String {
        return "\(self.num)/\(self.den)"
    }
    
    //INITIALISERS
    
    /**
        Default initialiser
 
        Numerator set to 0 and denominator set to 1.
     */
    convenience init(){
        //Setting numerator to 0 and
        //denominator to 1 is equivalent
        //to setting the fraction to zero
        self.init(num : 0, den : 1);
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
    
    /**
        Convenience initialiser
 
        Numerator is set to some value, denominator is set to 1.
 
        - paramater num: fractions numerator
    */
    convenience init(num: Int){
        self.init(num: num, den: 1);
    }
    
    // METHODS
    
    /**
     Adds a fraction to self.
     
     - parameter f: Fraction to add to self
     
     - returns: Fraction The result of adding f to self.
     */
    func add(_ f: Fraction) -> Fraction {
        return Fraction(num: self.num*f.den - self.den*f.num, den: self.den*f.den)
    }
    
    /**
     Subtracts fraction from self.
     
     - parameter f: Fraction to subtract from self
     
     - returns: Fraction The result of subtracting f from self.
     */
    func subtract(_ f: Fraction) -> Fraction {
        return Fraction(num: self.num*f.den - self.den*f.num,
                        den: self.den*f.den)
    }
    
    /**
     Multiplies self by a fraction.
     
     - parameter f: Fraction to multiply self by
     
     - returns: Fraction The result of multiplying self by f.
     */
    func multiply(_ f: Fraction) -> Fraction {
        return Fraction(num: self.num*f.num, den: self.den*f.den)
    }
    
    /**
     Divides self by a fraction.
     
     - parameter f: Fraction to divide self by
     
     - returns: Fraction The result of dividing self by f.
     */
    func divide(_ f: Fraction) -> Fraction {
        return Fraction(num: self.num*f.den, den: self.den*f.num)
    }
}
