//
//  PokemonDetailVC.swift
//  Pokedex
//
//  Created by Jorge Gomez on 2017-01-02.
//  Copyright © 2017 Jorge Gomez. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {

  var pokemon: Pokemon!
  @IBOutlet weak var pokemonLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    pokemonLabel.text = pokemon.name.capitalized
  }

}
