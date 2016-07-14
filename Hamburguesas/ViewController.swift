//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Ana Torres on 14/07/16.
//  Copyright © 2016 Softm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pais: UILabel!
    @IBOutlet weak var hamburguesa: UILabel!
    let nombrePais = ColeccionDePaises()
    let nombreHamburguesa = ColeccionDeHamburguesa()
    let colores = Colores()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func cambiarDatos(sender: AnyObject) {
        
        pais.text = nombrePais.obtenPais()
        hamburguesa.text = nombreHamburguesa.obtenHamburguesa()
        let colorAleatorio = colores.regresaColorAleatorio()
        view.backgroundColor = colorAleatorio
        view.tintColor = colorAleatorio
        
    }

}

