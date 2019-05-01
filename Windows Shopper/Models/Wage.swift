//
//  Wage.swift
//  Windows Shopper
//
//  Created by Benoit Philips on 01/05/2019.
//  Copyright © 2019 HumbeekWave. All rights reserved.
//

import Foundation

class Wage {
    
    class func getHours (forWage wage: Double, andPrice price: Double) -> Int {
        
        return Int(ceil(price / wage))
        
    }
}
