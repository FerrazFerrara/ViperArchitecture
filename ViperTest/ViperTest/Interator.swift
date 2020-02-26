//
//  Interator.swift
//  ViperTest
//
//  Created by Ferraz on 21/02/20.
//  Copyright © 2020 Ferraz. All rights reserved.
//

import Foundation

/// Classe usada como Interctor da Tela Principal
class Interator: InteractorProtocol{
    
    /// lista de todos os pokemons
    var pokemons = [Pokemon]()
    /// index do pokemon atual
    var index = 0
    
    /// referencia para o presenter (Output)
    var presenter: PresenterOutputProtocol?
    
    /*
     Adiciona todos os pokemons ao array
     */
    init(){
        pokemons = SetterAll.createPokemons()
    }
    
    /*
     Passa para o proximo pokemon
     */
    func sendNextPokemons(){
        if index == pokemons.count - 1{
            index = 0
        } else {
            index += 1
        }
        
        self.presenter?.sendPokemonToView(pokemon: pokemons[index])
    }
    
    /*
     Apresenta o primeiro pokemon do array
     */
    func firstPokemon(){
        self.presenter?.sendPokemonToView(pokemon: pokemons[0])
    }
}
