//
//  ViewController.swift
//  ViperTest
//
//  Created by Ferraz on 21/02/20.
//  Copyright © 2020 Ferraz. All rights reserved.
//

import UIKit

/// Classe usada como View da Tela Principal
class ViewController: UIViewController, ViewProtocol{

    /// label do nome do pokemon
    @IBOutlet weak var nomeLabel: UILabel!
    /// label do numero do pokemon
    @IBOutlet weak var numeroLabel: UILabel!
    
    /// referencia para o Presenter (Input)
    var presenter: PresenterInputProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SetterAll.createSetAll(viewControllerRef: self)
        presenter?.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    /*
     Proximo pokemon da lista
     */
    @IBAction func proximoBtn(_ sender: Any) {
        presenter?.changePokemon()
    }
    
    /*
     Atualizar o pokemon atual
     */
    func updatePokemon(pokemon: Pokemon) {
        self.nomeLabel.text = pokemon.nome
        self.numeroLabel.text = "\(pokemon.id)"
    }
    
}

