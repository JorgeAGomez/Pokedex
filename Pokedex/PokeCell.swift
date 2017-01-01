//
//  PokeCell.swift
//  Pokedex
//
//  Created by Jorge Gomez on 2016-12-30.
//  Copyright © 2016 Jorge Gomez. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
  @IBOutlet weak var thumbImage: UIImageView!
  @IBOutlet weak var nameLabel: UILabel!
  
  var pokemon: Pokemon!
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    layer.cornerRadius = 6.0
  }
  
  
  func configureCell(pokemon: Pokemon){
    self.pokemon = pokemon
    thumbImage.image = UIImage(named: "\(self.pokemon.pokedexId)")
    nameLabel.text = self.pokemon.name.capitalized
  }
  
}
