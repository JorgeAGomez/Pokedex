//
//  ViewController.swift
//  Pokedex
//
//  Created by Jorge Gomez on 2016-12-29.
//  Copyright © 2016 Jorge Gomez. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {


  @IBOutlet weak var collectionView: UICollectionView!
  var pokemons = [Pokemon]()
  
  var musicPlayer: AVAudioPlayer!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    collectionView.delegate = self
    collectionView.dataSource = self
    
    parsePokemonCSV()
    initAudio()
  }
  
  func initAudio(){
    let path = Bundle.main.path(forResource: "music", ofType: "mp3")!
    
    do {
      musicPlayer = try AVAudioPlayer(contentsOf: URL(string: path)!)
      musicPlayer.prepareToPlay()
      musicPlayer.numberOfLoops = -1
      musicPlayer.play()
      
    } catch let error as NSError {
      print(error.debugDescription)
    }
  }
  
  func parsePokemonCSV(){
    let path = Bundle.main.path(forResource: "pokemon", ofType: "csv")!
    do {
      let csv = try CSV(contentsOfURL: path)
      let rows = csv.rows
      for pokemon in rows {
      
        let name = pokemon["identifier"]
        let id = Int(pokemon["id"]!)!
       
         let newPokemon = Pokemon(name: name!, pokedexId: id)
         pokemons.append(newPokemon)
        
      }
    }
    catch let error as NSError {
      print(error.debugDescription)
    }
    
  }
  
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
  
    if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PokeCell", for: indexPath) as? PokeCell {
    
    let pokemon = pokemons[indexPath.row]
    cell.configureCell(pokemon)
    
      return cell
    }
    
    return UICollectionViewCell()
  }
  
  
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
  
  }


  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
  
    return pokemons.count
  }
  
  func numberOfSections(in collectionView: UICollectionView) -> Int {
   
     return 1
  }

  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
  
    return CGSize(width: 105, height: 105)
  }
  
  
  @IBAction func musicButtonPressed(_ sender: UIButton) {
  
    if musicPlayer.isPlaying {
    
      musicPlayer.pause()
      sender.alpha = 0.2
    }
    else {
    
      musicPlayer.play()
      sender.alpha = 0.1
    }
  }
  
}

