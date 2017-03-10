//
//  ViewController.swift
//  2DA_EVA_2_TABLAS
//
//  Created by LEONARDO on 07/03/17.
//  Copyright © 2017 LEONARDO. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let misdatos = ["Pipupi","Nozomi","Poodle","Kawaii","Zelda","Lonk","Santa fe","Kotori","Rin","momos","Hanayo"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return misdatos.count
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let controlador = UIAlertController(title: "Tus datos", message: misdatos[indexPath.row], preferredStyle: .Alert)
        let button = UIAlertAction(title: "OK", style: .Default, handler: nil)
        controlador.addAction(button)
        presentViewController(controlador, animated: true, completion: nil)
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCellWithIdentifier("micelda")
        //falta asignar los datos del arreglo a la celda que se va a reutilizar
        celda?.textLabel?.text = misdatos[indexPath.row]
        let imFija = UIImage(named: "star-b")
        let imClick = UIImage(named: "star-p")
        celda?.imageView?.image = imFija
        celda?.imageView?.highlightedImage = imClick
        return celda!
    }

}

