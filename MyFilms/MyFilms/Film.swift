//
//  film.swift
//  MyFilms
//
//  Created by Victor Ponciano on 30/06/21.
//

import UIKit

class Film{
    let title: String!
    let description: String!
    let image: UIImage!
    
    init(title: String, description: String, image: UIImage){
        self.title = title
        self.description = description
        self.image = image
    }
}
