//
//  FilmTableViewController.swift
//  MyFilms
//
//  Created by Victor Ponciano on 30/06/21.
//

import UIKit

class FilmTableViewController: UITableViewController {
    
    var films: [Film] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var filme: Film
    
        filme = Film(title: "Filme 1", description: "Descrição 1", image: UIImage(named: "filme1")!)
        films.append(filme)
        
        filme = Film(title: "Filme 2", description: "Descrição 2", image: UIImage(named: "filme2")!)
        films.append(filme)
        
        filme = Film(title: "Filme 3", description: "Descrição 3", image: UIImage(named: "filme3")!)
        films.append(filme)
        
        filme = Film(title: "Filme 4", description: "Descrição 4", image: UIImage(named: "filme4")!)
        films.append(filme)
        
        filme = Film(title: "Filme 5", description: "Descrição 5", image: UIImage(named: "filme5")!)
        films.append(filme)
        
        filme = Film(title: "Filme 6", description: "Descrição 6", image: UIImage(named: "filme6")!)
        films.append(filme)
        
        filme = Film(title: "Filme 7", description: "Descrição 8", image: UIImage(named: "filme8")!)
        films.append(filme)
        
        filme = Film(title: "Filme 8", description: "Descrição 8", image: UIImage(named: "filme8")!)
        films.append(filme)
        
        filme = Film(title: "Filme 9", description: "Descrição 9", image: UIImage(named: "filme9")!)
        films.append(filme)
        
        filme = Film(title: "Filme 10", description: "Descrição 10", image: UIImage(named: "filme10")!)
        films.append(filme)



    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return films.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let filme: Film = films[indexPath.row]
        let celulaReuse = "filmReuse"
        
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuse, for: indexPath) as! FilmCell
        //celula.textLabel?.text = filme.title
        //celula.imageView?.image = filme.image
        
        celula.filmImageView.image = filme.image
        celula.filmTitleLbl.text = filme.title
        celula.filmDescLbl.text = filme.description
        
        celula.filmImageView.layer.cornerRadius = 42
        celula.filmImageView.clipsToBounds = true
        
        
        return celula
    }
}
