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
  
  //Choose Bio or Moves
  @IBOutlet weak var segmentedControl: UISegmentedControl!
  
  //Pokemon label characteristics
  @IBOutlet weak var typeLabel: UILabel!
  @IBOutlet weak var defenseLabel: UILabel!
  @IBOutlet weak var heightLabel: UILabel!
  @IBOutlet weak var pokeIDLabel: UILabel!
  @IBOutlet weak var weightLabel: UILabel!
  @IBOutlet weak var baseAttackLabel: UILabel!
  @IBOutlet weak var descriptionLabel: UILabel!
  
  //current Pokemon image
  @IBOutlet weak var pokeImage: UIImageView!
  
  //Evolution images (two images at the bottom)
  @IBOutlet weak var evolutionTo: UIImageView!
  @IBOutlet weak var evolutionFrom: UIImageView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    pokemonLabel.text = pokemon.name.capitalized
  }

  @IBAction func backButtonPressed(_ sender: Any) {
  
    
  }
}
