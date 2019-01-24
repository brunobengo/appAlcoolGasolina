//
//  ViewController.swift
//  AlcoolOuGasolina
//
//  Created by Bruno Bengochea on 09/11/18.
//  Copyright © 2018 Curso IOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultadoLegenda: UILabel!    
    @IBOutlet weak var precoGasolina: UITextField!
    @IBOutlet weak var precoAlcool: UITextField!
   
    @IBAction func calcularCombustivel(_ sender: Any) {
        if let letPrecoAlcool = precoAlcool.text {
            if let letPrecoGasolina = precoGasolina.text {
                let validaCampos = self.validaCampos(precoAlcool: letPrecoAlcool,
                                                     precoGasolina: letPrecoGasolina)
                if validaCampos {
                    calcularMelhorPreco(precoAlcool: letPrecoAlcool, precoGasolina: letPrecoGasolina)
                }else{
                    resultadoLegenda.text = "Digite os preços para calcular!"
                }
                
            }
        }
        
    }
    
    func calcularMelhorPreco(precoAlcool: String, precoGasolina: String) -> Bool{
        if let valorAlcool = Double(precoAlcool){
            if let valorGasolina = Double(precoGasolina){
                let resultadoPreco = valorAlcool / valorGasolina
                if resultadoPreco >= 0.7 {
                    self.resultadoLegenda.text = "Melhor utilizar gasolina!"
                }else{
                    self.resultadoLegenda.text = "Melhor utilizar Alcool!"
                    
                }
            }
        }
        return true
    }
    
    func validaCampos(precoAlcool: String, precoGasolina: String) -> Bool{
        
        return !precoAlcool.isEmpty && !precoGasolina.isEmpty
        
//        var camposValidados = true
//
//        if precoAlcool.isEmpty {
//            camposValidados = false
//        }else if precoGasolina.isEmpty {
//            camposValidados = false
//        }
//
//        return camposValidados
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    


   
}

