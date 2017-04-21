//
//  TableViewCell.swift
//  2DA_EVA_4_CUSTOM_TABLES
//
//  Created by LEONARDO on 10/03/17.
//  Copyright © 2017 LEONARDO. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var lblNombre:UILabel!
    @IBOutlet var lblUbica:UILabel!
    @IBOutlet var lblDesc:UILabel!
    @IBOutlet var imgImagen:UIImageView!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
