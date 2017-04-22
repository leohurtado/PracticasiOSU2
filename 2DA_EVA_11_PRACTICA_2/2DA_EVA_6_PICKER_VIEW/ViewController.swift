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
        "Facebook",
        "google",
        "instagram",
        "pinterest",
        "twitter"
    ]
    var images:[UIImage]!

    var combinacion = [3,3,3]

    var s = [0,0,0]

    override func viewDidLoad() {
        super.viewDidLoad()

        images = [UIImage(named: "facebook")!,
        UIImage(named: "google")!,
        UIImage(named: "instagram")!,
        UIImage(named: "pinterest")!,
        UIImage(named: "twitter-xl")!]
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return "row "+String(row)+" component "+String(component)


    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 3
    }
    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 64
    }

    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        var sMensa:String
        sMensa = asDatos[row]

        s[component] = row


        if(s==combinacion){
            let acMostrar = UIAlertController(title: "Picker View "+String(row), message: sMensa, preferredStyle: .Alert)

            let acBoton = UIAlertAction(title: "OK", style: .Default, handler: nil)
            acMostrar.addAction(acBoton)

            presentViewController(acMostrar, animated: true, completion: nil)
        }


    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return asDatos.count
    }
    /*func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
        let imagen = images[row]
        let imgView = UIImageView(image: imagen)
        return imgView
    }*/


}
