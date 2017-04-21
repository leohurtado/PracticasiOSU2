//
//  ViewController.swift
//  2DA_EVA_5_TABLE_VIEW
//
//  Created by LEONARDO on 14/03/17.
//  Copyright © 2017 LEONARDO. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let misDatos = ["Xpress Hamburger","Pizza Fast","Tacos Mexicanos","Pollo Loco"]
    let misImagenes = ["hamburguesa","pizza","tacos","pollo"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return misDatos.count //agarra los datos del arreglo
    }


    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let controlador = UIAlertController(title: "Tus Datos", message: misDatos[indexPath.row], preferredStyle: .Alert) //selecciona el dato en el que se dio click

        let boton = UIAlertAction(title: "OK", style: .Default, handler: nil) //Crea un Boton con texto OK
        controlador.addAction(boton) //poner el controlador en el boton
        presentViewController(controlador, animated: true, completion: nil) // muestra el dato al que se le dio click
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell { //cellforRow reutiliza las celdas

        let celda = tableView.dequeueReusableCellWithIdentifier("micelda") as! TableViewCellMia


        celda.lblNombre.text = misDatos[indexPath.row] // se le da los datos a la celda --- indexPath para saber que fila fue seleccionada
        celda.lblUbica.text = "Chihuahua" // Agrega una ubicacion para todos nuestros datos
        celda.lblDesc.text = "Far Far Away..." //Agrega una descripcion para todos nuestros datos
        let img = UIImage(named: misImagenes[indexPath.row])//seleccionar una imagen
        celda.imgImagen.image = img // asigna la imFija
        return celda // regresamos la celda
    }

    func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
        let compartirAct = UITableViewRowAction(style: .Default, title: "Compartir", handler: comparteRest)
        return [compartirAct]

    }

    func comparteRest(action: UITableViewRowAction, indexPath: NSIndexPath) -> Void {
        let miTexto = "Vine a comer en " + misDatos[indexPath.row] //Selecciona el arreglo de nombres y elige en el que se dio click
        let miImagen = UIImage(named: misImagenes[indexPath.row]) //Selecciona el arreglo de imagenes y elige en el que se dio click
        let actController = UIActivityViewController(activityItems: [miTexto, miImagen!], applicationActivities: nil) // junta la imagen y texto
        presentViewController(actController, animated: true, completion: nil) // crea la animacion para compartir
    }


}
