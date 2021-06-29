//
//  ViewController.swift
//  Estudando_o_Basicoo
//
//  Created by Victor Ponciano on 28/06/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblResult: UILabel!
    
    @IBAction func numbGen(_ sender: Any) {
        
        var number = arc4random_uniform(11)
        
        lblResult.text = String(number)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

