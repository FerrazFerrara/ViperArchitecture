//
//  Protocols.swift
//  ViperTest
//
//  Created by Ferraz on 21/02/20.
//  Copyright © 2020 Ferraz. All rights reserved.
//

import Foundation

/// Protocolo para o Interactor
protocol InteractorProtocol: class {
    var presenter: PresenterOutputProtocol? { get set }
    
    func sendNextPokemons()
    func firstPokemon()
}

/// Protocolo para a comunicação entre Presenter e Interactor
protocol PresenterInputProtocol: class {
    var view: ViewProtocol? { get set }
    var wireframe: RoutingProtocol? { get set }
    var interactor: InteractorProtocol? { get set }
    
    func changePokemon()
    func viewDidLoad()
}

/// Protocolo para a comunicação entre Presenter e View
protocol PresenterOutputProtocol: class {
    func sendPokemonToView(pokemon: Pokemon)
}

/// protocolo para a View
protocol ViewProtocol: class {
    func updatePokemon(pokemon: Pokemon)
}

/// Protocolo para o Routing
protocol RoutingProtocol: class {
    
}

/// Protocolo para Settar o que falta
protocol setAllProtocol {
    static func createSetAll(viewControllerRef: ViewController)
    static func createPokemons() -> [Pokemon]
}
