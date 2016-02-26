//
//  ProductsCollectionViewCellTableViewCell.swift
//  ceoJokes
//
//  Created by Jared Gutierrez on 2/24/16.
//  Copyright © 2016 Jared Gutierrez. All rights reserved.
//

import UIKit

class ProductsCollectionViewCellTableViewCell: UITableViewCell {

    @IBOutlet weak var productcell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
