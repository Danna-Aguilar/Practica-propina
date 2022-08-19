//
//  ViewController.swift
//  Practica-cuenta
//
//  Created by Alumno on 19/08/22.
//  Copyright © 2022 Sebastian Encinas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Cantidad: UITextField!
    @IBOutlet weak var propina: UISlider!
    @IBOutlet weak var lblContador: UILabel!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func IbSlider(_ sender: Any) {
        let cuenta = "54.8"
        let valorslider = Float(cuenta)
        lblContador.text = "\(Int(propina.value))%"
        
        let porcentajeP = float(Int(propina.value))
        let propina = cuenta * porcentajeP / 100.0
        
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

