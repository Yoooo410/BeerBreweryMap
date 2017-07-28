//
//  BeerDetailViewController.swift
//  BeerBreweryMap
//
//  Created by Yoshito Komiya on 2017/07/25.
//  Copyright © 2017 Yoshito Komiya. All rights reserved.
//

import UIKit

class BeerDetailViewController: UIViewController {
    var beerName: String!
    var beerAddress: String!
    var beerPhoneNumber: String!
    var beerWebsite: String!
    var beerSocialMedia: String!
    var beerLogoImage: String!
    var beerDetail: String!

    
    @IBOutlet weak var beerPlaceLogoImage: UIImageView!
    @IBOutlet weak var beerPlaceName: UILabel!
    @IBOutlet weak var beerPlaceAddress: UILabel!
    @IBOutlet weak var beerPlacePhoneNumber: UILabel!
    @IBOutlet weak var beerPlaceWebsite: UILabel!
    @IBOutlet weak var beerPlaceSocialMedia: UILabel!
    @IBOutlet weak var beerPlaceDetail: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        beerPlaceName.text = beerName
        beerPlaceAddress.text = beerAddress
        beerPlacePhoneNumber.text = beerPhoneNumber
        beerPlaceWebsite.text = beerWebsite
        beerPlaceSocialMedia.text = beerSocialMedia
        beerPlaceLogoImage.image = UIImage(named: beerLogoImage)
        beerPlaceDetail.text = beerDetail
    }
}
