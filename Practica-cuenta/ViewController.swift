//
//  ViewController.swift
//  Practica-cuenta
//
//  Created by Alumno on 19/08/22.
//  Copyright © 2022 Sebastian Encinas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var TotalSuma: UILabel!
    @IBOutlet weak var imprprop: UILabel!
    @IBOutlet weak var Cantidad: UITextField!
    @IBOutlet weak var propina: UISlider!
    @IBOutlet weak var lblContador: UILabel!
    var Total = Float(0.0);
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func IbSlider(_ sender: Any) {
        //let valorslider = Float(cuenta)
        let CantidadCuenta = Cantidad.text!
        let cantidadlabel = Float (CantidadCuenta) ?? 0.0
        lblContador.text = "\(Int(propina.value))%"
        let porcentajeP = Float(Int(propina.value))
        let Propina = (porcentajeP * (cantidadlabel/100.0))
        Total = cantidadlabel + Propina
        imprprop.text = String(format: "$ %.2f", Propina)
        TotalSuma.text = String(format:"$ %.2f", Total)
        
        
        
        
        
        
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

