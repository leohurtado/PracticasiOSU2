//
//  ViewController.swift
//  2DA_EVA_3_RESTAURANT
//
//  Created by LEONARDO on 08/03/17.
//  Copyright © 2017 LEONARDO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let misDatos = ["barrafina","bourkestreetbakery","cafedeadend","cafeloisl","cafelore","confessional","donostia","fiveleaves","forkeerestaurant","grahamavenuemeats","haighschocolate","homei","palominoespresso","petiteoyster","posatelier","royaloak","teakha","thaicafe","traif","upstate","wafflewolf"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return misDatos.count
    }

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        /*let controlador = UIAlertController(title:"Tus datos",message: misDatos[indexPath.row],preferredStyle: .Alert)
        let boton = UIAlertAction(title: "OK", style: .Default, handler: nil)
        controlador.addAction(boton)
        presentViewController(controlador, animated: true, completion: nil)*/
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var celda = tableView.dequeueReusableCellWithIdentifier("primera")
        //Falta asignar los datos del arreglo a la celda que se va a reutilizar
        if(celda==nil){
            celda=UITableViewCell(style: .Default, reuseIdentifier: "micelda")
        }

        celda?.textLabel?.text = misDatos[indexPath.row];

        let imFija = UIImage(named: misDatos[indexPath.row])

        celda?.imageView?.image = imFija

        return celda!;
    }


}
