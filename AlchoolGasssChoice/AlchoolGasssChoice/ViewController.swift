//
//  ViewController.swift
//  AlchoolGasssChoice
//
//  Created by Victor Ponciano on 29/06/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var alchPriceTxtFild: UITextField!
    
    @IBOutlet weak var gassPriceTxtFild: UITextField!
    
    @IBOutlet weak var answerLbl: UILabel!
    
    @IBAction func betterChoiceCalc(_ sender: Any) {
        
        
        
        if let gassPrice = gassPriceTxtFild.text {
            
            if let alchPrice = alchPriceTxtFild.text {
                
                if alchPrice.isEmpty && gassPrice.isEmpty {
                    answerLbl.text = "Digite o valor da Gasosa"
                } else if alchPrice.isEmpty {
                    answerLbl.text = "Digite o valor do Alcool"
                } else if  gassPrice.isEmpty{
                    answerLbl.text = "Digite os valores"
                } else {
                    if let gassPriceComp = Double(gassPrice){
                        if let alchPriceComp = Double(alchPrice){
                            let comparison = alchPriceComp / gassPriceComp
                            
                            if comparison >= 0.7 {
                                answerLbl.text = "Melhor utilizar Gasolina"
                            } else {
                                answerLbl.text = "Melhor usar Alcool"
                            }
                        }
                    }
                }
            }
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

