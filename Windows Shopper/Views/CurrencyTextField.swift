//
//  CurrencyTextField.swift
//  Windows Shopper
//
//  Created by Benoit Philips on 30/04/2019.
//  Copyright © 2019 HumbeekWave. All rights reserved.
//

import UIKit

@IBDesignable

class CurrencyTextField: UITextField {

    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
       customizeView()
      }
    
    func customizeView () {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2497592038)
        layer.cornerRadius = 5.0
        textAlignment = .center
        textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
//        if let p = placeholder {
//            let place = NSAttributedString(string: p, attributes: [.foregroundColor :  #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
//            attributedPlaceholder = place
//            textColor =  #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
//        }
    }
}
