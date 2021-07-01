    //
    //  ViewController.swift
    //  BitCoinPrice
    //
    //  Created by Victor Ponciano on 30/06/21.
    //
    
    import UIKit
    
    class ViewController: UIViewController {
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            
            if let url = URL(string: "https://blockchain.info/ticker") {
                
                let tarefa = URLSession.shared.dataTask(with: url) { (dados, requisicao, erro) in
                    
                    if erro == nil {
                        
                        if let dadosRetorno = dados {
                            do{
                                if let objJson = try JSONSerialization.jsonObject(with: dadosRetorno, options: []) as? [String: Any] {
                                    if let brl = objJson["BRL"] {
                                    let preco = brl["buy"] as? Double
                                        print(brl)
                                    }
                                    
                                }
                            }catch{
                                print("Erro")
                            }
                        }
                        
                    } else {
                        print("Erro")
                    }
                }
                tarefa.resume()
            }
        }
        
        
    }
    
