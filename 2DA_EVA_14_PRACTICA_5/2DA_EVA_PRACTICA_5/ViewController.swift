//
//  ViewController.swift
//  2DA_EVA_PRACTICA_5
//
//  Created by LEONARDO on 29/03/17.
//  Copyright © 2017 LEONARDO. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UIPickerViewDataSource,UIPickerViewDelegate{

    var datos = [["1","2","3","4","5"],["cuadrado","triangulo","circulo","rectangulo"],["rojo","verde","azul","gris","negro"]]
    var usuario = "Luis"
    var contraseña = ["4","circulo","azul"]
    var intentoContraseña = ["1","cuadrado","rojo"]

    @IBOutlet weak var usuarioTxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return datos[component][row]

    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 3
    }
    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 64
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {

        intentoContraseña[component] = datos[component][row]
        print(intentoContraseña)
        if(contraseña == intentoContraseña && usuarioTxt.text==usuario){
            let acMostrar = UIAlertController(title: "Mensaje de Bienvenida ", message: "Correcto", preferredStyle: .Alert)

            let acBoton = UIAlertAction(title: "OK", style: .Default, handler: {
                action in self.performSegueWithIdentifier("valido", sender: self)
            })
            acMostrar.addAction(acBoton)
            presentViewController(acMostrar, animated: true, completion: nil)
        }else {

        }




    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if(component==0){
            return datos[0].count
        }else if(component==1){
            return datos[1].count
        }else {
            return datos[2].count
        }

    }
}
