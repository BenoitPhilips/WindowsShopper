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
    @IBOutlet weak var hoursTxt: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
     override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.doCalculate), for: .touchUpInside)

        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        hoursTxt.isHidden = true
        hoursLbl.isHidden = true
   }

    @objc func doCalculate() {
        guard let wageTxt = wageTxt.text else { return}
        guard let priceTxt = priceTxt.text else {return}
        let wageNbr = Wage.currencyRemover(for: wageTxt)
        let priceNbr = Wage.currencyRemover(for: priceTxt)
        guard let wage = Double(wageNbr) else {return}
        guard let price = Double(priceNbr) else {return}

        // 4 previous Guards replace next statements and are easier to read if no else is required
        //        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text {
        //            if let wage = Double(wageTxt), let price = Double(priceTxt) {
        //                  // Code could have been placed here
        //            }
        //        }
 
        view.endEditing(true)
        hoursTxt.isHidden = false
        hoursLbl.isHidden = false
        self.wageTxt.text = Wage.currencyAdder(for: wageNbr)
        self.priceTxt.text = Wage.currencyAdder(for: priceNbr)
        hoursTxt.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
      }
    
    @IBAction func clearCalculatorBtnPressed(_ sender: Any) {
        wageTxt.text = ""
        priceTxt.text = ""
        hoursTxt.isHidden = true
        hoursLbl.isHidden = true
    }
    
    
}

fileprivate extension Selector {
    static let calculate = #selector(MainVC.doCalculate)
}
