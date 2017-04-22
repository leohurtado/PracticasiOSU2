//
//  primeraTableViewCell.swift
//  2DA_EVA_PRACTICA_6
//
//  Created by LEONARDO on 31/03/17.
//  Copyright © 2017 LEONARDO. All rights reserved.
//

import UIKit

class primeraTableViewCell: UITableViewCell {


    @IBOutlet weak var nombreRestaurant: UILabel!
    @IBOutlet weak var imagenRestaurant: UIImageView!
    @IBOutlet weak var lemaRestaurant: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
