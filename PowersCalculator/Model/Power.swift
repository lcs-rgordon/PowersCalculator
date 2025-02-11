//
//  Power.swift
//  PowersCalculator
//
//  Created by Russell Gordon on 2025-02-11.
//

import Foundation

struct Power {
    
    // MARK: Stored properties
    
    // The base of the power can hold any numeric value
    var base: Double
    
    // The exponent of a power must be an integer
    var exponent: Int
    
    // MARK: Computed properties
    
    // A power is simply a shorter way of expressing
    // repeated multiplication.
    //
    // e.g.: 3^2 = 3 * 3 = 9
    //
    // The base, 3, mutiplied by itself twice, resulting in 9
    var result: Double {
        
        // Start by making the solution equal to the base of the power
        var solution = base
        
        // Ensure that the exponent is more than one
        guard exponent > 1 else {
            
            // If the exponent is 1, we're just returning the base
            return solution
        }
        
        // Repeatedly multiply the base by itself as many more times as needed
        for _ in 2...exponent {
            solution *= base
        }
        
        // Return the solution
        return solution
        
    }
    
}
