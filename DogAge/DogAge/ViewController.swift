//
//  ViewController.swift
//  DogAge
//
//  Created by Victor Ponciano on 25/06/21.
//

import UIKit

class ViewController: UIViewController {
    
    var dogAge: Int = 0
    var dogInputAge: Int?
    
    
    
    
    @IBOutlet weak var dogAgeTxtFild: UITextField!
    
    
    
    
    @IBAction func calcBtn(_ sender: Any) {
        dogInputAge = Int(dogAgeTxtFild.text ?? "0")
        
        if let dogInputAgeConfirm = dogInputAge {
            dogAge = dogInputAgeConfirm * 7
        }
        
        
        dogAgeResultLbl.text = String(dogAge)
            
    }
    
    
    @IBOutlet weak var dogAgeResultLbl: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


}

