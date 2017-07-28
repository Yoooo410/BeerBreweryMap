//
//  BeerPlaceTableViewCell.swift
//  BeerBreweryMap
//
//  Created by Yoshito Komiya on 2017/07/25.
//  Copyright © 2017 Yoshito Komiya. All rights reserved.
//

import UIKit

class BeerPlaceTableViewCell: UITableViewCell {

    @IBOutlet weak var beerImageView: UIImageView!
    @IBOutlet weak var beerPlaceName: UILabel!
    @IBOutlet weak var beerPlaceAddress: UILabel!
    @IBOutlet weak var destance: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
