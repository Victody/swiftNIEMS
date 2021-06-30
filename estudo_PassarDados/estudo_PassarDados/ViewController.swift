//
//  ViewController.swift
//  estudo_PassarDados
//
//  Created by Victor Ponciano on 30/06/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nomeCampo: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "enviarDados" {
            
            let vCDestino = segue.destination as! DetalhesViewController
            vCDestino.textoRecebido = nomeCampo.text!
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

