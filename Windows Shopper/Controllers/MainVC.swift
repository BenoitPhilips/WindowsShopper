//
//  MainVC.swift
//  Windows Shopper
//
//  Created by Benoit Philips on 30/04/2019.
//  Copyright © 2019 HumbeekWave. All rights reserved.
//

import UIKit

class MainVC : UIViewController {

    
    @IBOutlet weak var wageTxt: CurrencyTextField!
    @IBOutlet weak var priceTxt: CurrencyTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.doCalculate), for: .touchUpInside)

       wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
    }

    @objc func doCalculate() {
        print("BPH was heer")
    }
    
 
}

fileprivate extension Selector {
    static let calculate = #selector(MainVC.doCalculate)
}
