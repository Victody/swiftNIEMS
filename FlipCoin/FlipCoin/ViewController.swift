//
//  ViewController.swift
//  FlipCoin
//
//  Created by Victor Ponciano on 30/06/21.
//

import UIKit

class ViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goResult" {
            let vCResult = segue.destination as! ResultViewController
            
            vCResult.randCoin = Int(arc4random_uniform(2))
        }
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

