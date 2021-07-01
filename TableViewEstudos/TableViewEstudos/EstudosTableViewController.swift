//
//  EstudosTableViewController.swift
//  TableViewEstudos
//
//  Created by Victor Ponciano on 30/06/21.
//

import UIKit

class EstudosTableViewController: UITableViewController {
    
    var dados: [String] = ["Lasanha", "Pizza", "Torta"]

    @IBAction func openAlert(_ sender: Any) {
        
        let alerta = UIAlertController(title: "Adicionar Contato", message: "Deseja adicionar um contato", preferredStyle: .alert)
        
        let confirmBtn = UIAlertAction(title: "Confirmar", style: .default, handler: nil)
        let cancelBtn = UIAlertAction(title: "Cancelar", style: .destructive, handler: nil)
        
        alerta.addAction(confirmBtn)
        alerta.addAction(cancelBtn)
        present(alerta, animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dados.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celulaReuso = "celulaReuso"
        
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso , for: indexPath)
        
        celula.textLabel?.text = dados[indexPath.row]
        return celula
    }

}
