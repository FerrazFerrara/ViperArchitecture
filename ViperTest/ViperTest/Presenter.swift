//
//  Presenter.swift
//  ViperTest
//
//  Created by Ferraz on 21/02/20.
//  Copyright © 2020 Ferraz. All rights reserved.
//

import Foundation

/// Classe usada como Presenter da Tela Principal
class Presenter: PresenterInputProtocol{
    
    /// Referencia para a View
    var view: ViewProtocol?
    /// Referencia para o Routing (navegação)
    var wireframe: RoutingProtocol?
    /// Referencia para o Interactor
    var interactor: InteractorProtocol?
    
    /*
     Chama o Interactor para passar o pokemon
     */
    func changePokemon() {
        self.interactor?.sendNextPokemons()
    }
    
    /*
     Primeiras configurações ao iniciar a tela
     */
    func viewDidLoad(){
        self.interactor?.firstPokemon()
    }
}

extension Presenter: PresenterOutputProtocol{
    
    /*
     Envia o pokemon atual para a View
     */
    func sendPokemonToView(pokemon: Pokemon) {
        self.view?.updatePokemon(pokemon: pokemon)
    }
    
}
