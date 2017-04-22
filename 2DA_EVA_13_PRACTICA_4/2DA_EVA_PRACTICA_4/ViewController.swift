//
//  ViewController.swift
//  2DA_EVA_PRACTICA_4
//
//  Created by LEONARDO on 29/03/17.
//  Copyright © 2017 LEONARDO. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UIPickerViewDataSource,UIPickerViewDelegate{

    var datos = [["sentra","altima","malibu","focus","civic"],["negro","rojo","plata","blanco","azul"],["2017","2016","2015","2014","2013"]]

    var modeloSelected = ["sentra","blanco","2017"]

    var defaultImage = UIImage(named: "default-image")

    @IBOutlet weak var Imagen: UIImageView!

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

        print(modeloSelected[component])
        modeloSelected[component] = datos[component][row]
        print(modeloSelected[component])
        let nombreImagen = modeloSelected[0]+"-"+modeloSelected[1]+"-"+modeloSelected[2]
        print(nombreImagen)
        let image = UIImage(named: nombreImagen)


        if(image==nil){
            Imagen.image = defaultImage
        }else {
            Imagen.image = image
        }

            /*let acMostrar = UIAlertController(title: "Picker View "+String(row), message: sMensa, preferredStyle: .Alert)

            let acBoton = UIAlertAction(title: "OK", style: .Default, handler: nil)
            acMostrar.addAction(acBoton)

            presentViewController(acMostrar, animated: true, completion: nil)*/



    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return datos[0].count
    }


}
