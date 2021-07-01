//
//  ZodiacTableViewController.swift
//  TaleViewSignos
//
//  Created by Victor Ponciano on 30/06/21.
//

import UIKit

class ZodiacTableViewController: UITableViewController {
    
    let zodiacSigil: [String] = ["Áries","Touro","Gêmeos","Câncer","Leão","Virgem","Libra","Escorpião","Sagitário","Capricórnio","Áquario","Peixes"]
    let zodiacMean: [String] = ["Centauro","Come muito","Doidas","Triste","Rawr!","Maria","Balança","Veneno","Esse é o centauro?","Talvez esse seja o centauro","Cativeiro de peixes","Aquele que é sequestrado para viver em um aquario",]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return zodiacSigil.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let zodiacReuse = "zodiacReuse"
        
        let celula = tableView.dequeueReusableCell(withIdentifier: zodiacReuse, for: indexPath)
        celula.textLabel?.text = zodiacSigil[indexPath.row]
        
        return celula
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let alertController = UIAlertController(title: "Significado dos Signos", message: zodiacMean[indexPath.row], preferredStyle: .alert)
        
        let actionConfirm = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alertController.addAction(actionConfirm)
        
        present(alertController, animated: true, completion: nil)
        
        print(zodiacMean[indexPath.row])
    }
}
