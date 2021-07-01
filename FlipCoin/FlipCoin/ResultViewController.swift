//
//  ResultViewController.swift
//  FlipCoin
//
//  Created by Victor Ponciano on 30/06/21.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var imgMoeda: UIImageView!
    var randCoin: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if randCoin == 0 {
            let image = UIImage(named: "moeda_cara")
            imgMoeda.image = image
            
        } else {
            let image = UIImage(named: "moeda_coroa")
            imgMoeda.image = image
            
        }
    }
}
