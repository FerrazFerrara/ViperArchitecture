//
//  Setter.swift
//  ViperTest
//
//  Created by Ferraz on 21/02/20.
//  Copyright © 2020 Ferraz. All rights reserved.
//

import Foundation

/// Classe auxiliar para o projeto para settar coisas
class SetterAll: setAllProtocol{
    
    /*
     instancia e dar valor as classes Presenter, Interactor, View e Routing
     */
    static func createSetAll(viewControllerRef: ViewController) {
        let presenter: PresenterOutputProtocol & PresenterInputProtocol = Presenter()
        
        viewControllerRef.presenter = presenter
        viewControllerRef.presenter?.interactor = Interator()
        viewControllerRef.presenter?.view = viewControllerRef
        viewControllerRef.presenter?.wireframe = Routing()
        viewControllerRef.presenter?.interactor?.presenter = presenter
    }
    
    /*
     Instancia os Pokemons
     */
    static func createPokemons() -> [Pokemon]{
        var pokemons = [Pokemon]()
        
        pokemons.append(Pokemon(nome: "Bulbasaur", id: 1))
        pokemons.append(Pokemon(nome: "Ivysaur", id: 2))
        pokemons.append(Pokemon(nome: "Venusaur", id: 3))
        pokemons.append(Pokemon(nome: "Charmander", id: 4))
        pokemons.append(Pokemon(nome: "Charmeleon", id: 5))
        pokemons.append(Pokemon(nome: "Charizard", id: 6))
        pokemons.append(Pokemon(nome: "Squirtle", id: 7))
        pokemons.append(Pokemon(nome: "Wartortle", id: 8))
        pokemons.append(Pokemon(nome: "Blastoise", id: 9))
        
        return pokemons
    }
}
