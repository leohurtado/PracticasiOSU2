//
//  ViewController.swift
//  2DA_EVA_3_RESTAURANTES
//
//  Created by LEONARDO on 08/03/17.
//  Copyright © 2017 LEONARDO. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let misimg = ["barrafina","bourkestreetbakery","cafedeadend","cafeloisl","cafelore","confessional","donostia","fiveleaves","forkeerrestaurant"]
    let misdatos = ["Barrafina","Bourke Street Bakery","cafe dead end","cafe loisl","cafe lore","confessional","donodtia","five leaves","fofkee restaurant"]
    
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
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCellWithIdentifier("micelda")
        celda?.textLabel?.text = misdatos[indexPath.row]
        celda?.imageView?.image = UIImage(named: misimg[indexPath.row])
        return celda!
    }

}

