//
//  DetalleViewController.swift
//  2DA_EVA_PRACTICA_6
//
//  Created by LEONARDO on 07/04/17.
//  Copyright © 2017 LEONARDO. All rights reserved.
//

import UIKit

class DetalleViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {

    @IBOutlet weak var nombre: UILabel!

    var platillo = ""
    var nombreR = ""


    var ingredientes = [["Queso","Salami","Carne Res","Pollo","Filete"],["Pina","Jamon","Cebolla","Lechuga","Res"]]

    var ingredientsSelected = ["Queso","Pina"]

    override func viewDidLoad() {
        super.viewDidLoad()
        nombre.text = nombreR
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ingredientes[component][row]

    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2
    }
    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 64
    }

    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        ingredientsSelected[component] = ingredientes[component][row]

        var sMensa:String
        sMensa = "Su platillo tendra "+ingredientsSelected[0]+" y "+ingredientsSelected[1]

        let acMostrar = UIAlertController(title: "Picker View", message: sMensa, preferredStyle: .Alert)

        let acBoton = UIAlertAction(title: "OK", style: .Default, handler: nil)
        let shBoton = UIAlertAction(title: "Share", style: .Default, handler: compartirRestaurant)
        acMostrar.addAction(acBoton)
        acMostrar.addAction(shBoton)

        presentViewController(acMostrar, animated: true, completion: nil)
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ingredientes[0].count
    }

    func compartirRestaurant(action:UIAlertAction) -> Void{

        let miTexto = "Vine a comer en " + nombreR + "un " + platillo
        let miImagen = UIImage(named: nombreR)

        let actController = UIActivityViewController(activityItems: [miTexto,miImagen!], applicationActivities: nil)
        presentViewController(actController, animated: true, completion: nil)
    }
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
        let imgView = UIImageView(image: UIImage(named: ingredientes[component][row]))
        return imgView
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
