//
//  ViewController.swift
//  2DA_EVA_6_PICKER_VIEW
//
//  Created by LEONARDO on 16/03/17.
//  Copyright © 2017 LEONARDO. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate{

    let asDatos = [
        "Soldier",
        "Knight",
        "Mage",
        "ArchMage",
        "Archer",
        "Priest",
        "Lord"
    ]
    let asDatos2 = [
        "Dragon",
        "King",
        "HiPriest",
        "Mage Knight",
        "General",
        "Lancer",
        "Axe Knight"
    ]

    /*


     var asImagenes:[UImage]
 */

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if(component==0){
            return asDatos[row]
        }else {
            return asDatos2[row]
        }

    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        var sMensa:String
        if(component==0){
            sMensa = asDatos[row]
        }else{
            sMensa = asDatos2[row]
        }

        let acMostrar = UIAlertController(title: "Picker View", message: sMensa, preferredStyle: .Alert)

        let acBoton = UIAlertAction(title: "OK", style: .Default, handler: nil)
        acMostrar.addAction(acBoton)

        presentViewController(acMostrar, animated: true, completion: nil)
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return asDatos.count
    }
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
        <#code#>
    }


}
