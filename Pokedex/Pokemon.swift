//
//  Pokemon.swift
//  Pokedex
//
//  Created by Jorge Gomez on 2016-12-30.
//  Copyright © 2016 Jorge Gomez. All rights reserved.
//

import Foundation

class Pokemon {

  fileprivate var _name: String!
  fileprivate var _pokedexId: Int!
  
  var name: String {
      return _name
  }
  
  var pokedexId: Int {
    return _pokedexId
  }
  
  
  init(name: String, pokedexId: Int){
    self._name = name
    self._pokedexId = pokedexId
  }


}
