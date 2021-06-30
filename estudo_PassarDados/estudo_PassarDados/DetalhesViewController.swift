//
//  DetalhesViewController.swift
//  estudo_PassarDados
//
//  Created by Victor Ponciano on 30/06/21.
//

import UIKit

class DetalhesViewController: UIViewController {
    
    
    @IBOutlet weak var resultLbl: UILabel!
    
    var textoRecebido: String = "0"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        resultLbl.text = textoRecebido
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
