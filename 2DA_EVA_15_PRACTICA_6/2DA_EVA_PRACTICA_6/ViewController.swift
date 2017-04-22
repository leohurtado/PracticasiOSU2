//
//  ViewController.swift
//  2DA_EVA_PRACTICA_6
//
//  Created by LEONARDO on 31/03/17.
//  Copyright © 2017 LEONARDO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    var restaurants = [
        ["barrafina","El mejor restaurant","Milanesa"],
        ["bourkestreetbakery","El mejor restaurant","Spaguetti"],
        ["cafedeadend","El mejor restaurant","Filete"],
        ["cafeloisl","El mejor restaurant","Rib Eye"],
        ["cafelore","El mejor restaurant","Carnitas de pescado"],
        ["confessional","El mejor restaurant","Arrachera marinada"],
        ["donostia","El mejor restaurant","Arrachera"],
        ["fiveleaves","El mejor restaurant","Salmon"],
        ["forkeerestaurant","El mejor restaurant","Pechuga al grill"],
        ["grahamavenuemeats","El mejor restaurant","Lasagna de carne"],
        ["haighschocolate","El mejor restaurant","Spaghetti Cecilia"],
        ["homei","El mejor restaurant","Smokehouse Burger"],
        ["palominoespresso","El mejor restaurant","Cheese Burger"],
        ["petiteoyster","El mejor restaurant","chocolate cake"],
        ["posatelier","El mejor restaurant","Buffalo Wings"],
        ["royaloak","El mejor restaurant","Ravioli"],
        ["teakha","El mejor restaurant","Papas fritas"],
        ["thaicafe","El mejor restaurant","Hamburgesa doble"],
        ["traif","El mejor restaurant","Gorditas"],
        ["upstate","El mejor restaurant","Enchiladas"],
        ["wafflewolf","El mejor restaurant","Waffles"]
    ]

    var restaurantSelect = ["","",""]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count
    }

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        restaurantSelect = restaurants[indexPath.row]
        performSegueWithIdentifier("detalle", sender: self)

    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let vc = segue.destinationViewController as! DetalleViewController
        print(restaurantSelect[0])
        vc.nombreR = restaurantSelect[0]
        vc.platillo = restaurantSelect[0]
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCellWithIdentifier("primera") as! primeraTableViewCell
        //Falta asignar los datos del arreglo a la celda que se va a reutilizar


        celda.nombreRestaurant.text = restaurants[indexPath.row][0]
        celda.lemaRestaurant.text = restaurants[indexPath.row][1]

        let imFija = UIImage(named: restaurants[indexPath.row][0])

        celda.imagenRestaurant.image = imFija

        return celda;
    }





}
