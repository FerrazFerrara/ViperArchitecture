//
//  Pokemon.swift
//  ViperTest
//
//  Created by Ferraz on 21/02/20.
//  Copyright © 2020 Ferraz. All rights reserved.
//

import Foundation

/// Classe de Pokemons usada como Entity
class Pokemon{
    
    /// Nome do pokemon
    var nome: String
    /// Id do pokemon
    var id: Int
    
    
    init(nome: String, id: Int) {
        self.nome = nome
        self.id = id
    }
}
