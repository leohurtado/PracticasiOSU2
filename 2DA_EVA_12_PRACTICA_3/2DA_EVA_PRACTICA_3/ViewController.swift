//
//  ViewController.swift
//  2DA_EVA_PRACTICA_3
//
//  Created by LEONARDO on 31/03/17.
//  Copyright © 2017 LEONARDO. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{

    // materias[x][0] Nombre de la materia
    // materias[x][1] Semestre de la materia
    // materias[x][2] Nombre imagen materia

    var materias = [[
    "Fundamentos de programacion",
        "1er Semestre",
        "programacion"],[
    "Programacion Orientada a objetos",
        "2do Semestre",
        "programacion"],[
    "Programacion Web",
        "8vo Semestre",
        "programacion"],[
    "Administracion de Redes",
        "8vo Semestre",
        "redes"],[
    "Desarrollo Web",
        "7mo Semestre",
        "programacion"],[
    "Fundamentos Base de datos",
        "2do Semestre",
        "basedatos"],[
    "Base de datos",
        "3er Semestre",
        "basedatos"],[
    "Instalacion de servidores",
        "6to Semestre",
        "redes"]
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return materias.count
    }

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let controlador = UIAlertController(title:materias[indexPath.row][0],message:materias[indexPath.row][1],preferredStyle: .Alert)
        let boton = UIAlertAction(title: "OK", style: .Default, handler: nil)
        controlador.addAction(boton)
        presentViewController(controlador, animated: true, completion: nil)
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCellWithIdentifier("primera") as! primeraTableViewCell
        //Falta asignar los datos del arreglo a la celda que se va a reutilizar


        celda.nombrePrimera.text = materias[indexPath.row][0]

        let imFija = UIImage(named: materias[indexPath.row][2])

        celda.imagenPrimera.image = imFija

        return celda;
    }

    /*func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {

        let compartirAct = UITableViewRowAction(style: .Default, title: "Compartir",handler: compartirRestaurant)
        return [compartirAct]

    }*/
}
