//
//  ViewController.swift
//  2DA_EVA_4_CUSTOM_TABLES
//
//  Created by LEONARDO on 10/03/17.
//  Copyright © 2017 LEONARDO. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{

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
        let controlador = UIAlertController(title:"Tus datos",message: misDatos[indexPath.row],preferredStyle: .Alert)
        let boton = UIAlertAction(title: "OK", style: .Default, handler: nil)
        controlador.addAction(boton)
        presentViewController(controlador, animated: true, completion: nil)
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCellWithIdentifier("primera") as! TableViewCell
        //Falta asignar los datos del arreglo a la celda que se va a reutilizar


        celda.lblNombre.text = misDatos[indexPath.row];
        celda.lblUbica.text="Chihuahua"
        celda.lblDesc.text="Far far away...."
        let imFija = UIImage(named: misDatos[indexPath.row])

        celda.imgImagen.image = imFija

        return celda;
    }

    func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {

        let compartirAct = UITableViewRowAction(style: .Default, title: "Compartir",handler: compartirRestaurant)
        return [compartirAct]

    }

    func compartirRestaurant(action:UITableViewRowAction,indexPath:NSIndexPath) -> Void{

        let miTexto = "Vine a comer en " + misDatos[indexPath.row]
        let miImagen = UIImage(named: misDatos[indexPath.row])


        let actController = UIActivityViewController(activityItems: [miTexto,miImagen!], applicationActivities: nil)
        presentViewController(actController, animated: true, completion: nil)
    }


}
