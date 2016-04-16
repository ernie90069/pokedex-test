//
//  PokeCell.swift
//  pokedex
//
//  Created by Ernie Barojas on 4/15/16.
//  Copyright © 2016 Ernie Barojas. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbImage: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    var pokemon: Pokemon!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.layer.cornerRadius = 5.0
    }
   
    
    
    
    func configureCell(pokemon: Pokemon) {
    
        self.pokemon = pokemon
        nameLbl.text = self.pokemon.name.capitalizedString
        
        thumbImage.image = UIImage(named: "\(self.pokemon.pokedexId)")
        
        
        
        
        
    }
    
    
}
