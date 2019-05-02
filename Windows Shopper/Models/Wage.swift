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
    
    class func currencyRemover (for currencyTxt : String) -> String {
        var currency : String = currencyTxt
        
        var digitSet = CharacterSet.decimalDigits
        let internalDecimalSep = "."
        var usedDecimalSep : String
        
        if let decimalSep = NumberFormatter().decimalSeparator {
            digitSet.insert(charactersIn: decimalSep)
            usedDecimalSep = decimalSep
        } else {
            usedDecimalSep = internalDecimalSep
        }
        currency = String(currency.unicodeScalars.filter { digitSet.contains($0) })
        if internalDecimalSep != usedDecimalSep {
            currency = currency.replacingOccurrences(of: usedDecimalSep, with: internalDecimalSep)
        }
        return currency
    }

    class func currencyAdder (for currencyTxt : String) -> String {
        var CurrencyToDisplay : String = currencyTxt
        
        let internalDecimalSep = "."
        let userDecimalSep : String = NumberFormatter().decimalSeparator
        
        if internalDecimalSep != userDecimalSep {
            CurrencyToDisplay = CurrencyToDisplay.replacingOccurrences(of: internalDecimalSep, with: userDecimalSep)
        }
        if let currencySymbol = NumberFormatter().currencySymbol {
            CurrencyToDisplay = currencySymbol + " " + CurrencyToDisplay
        } else {
            CurrencyToDisplay = currencyTxt
        }
        return CurrencyToDisplay
    }

}
