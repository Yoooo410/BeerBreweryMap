//
//  BeerDetailViewController.swift
//  BeerBreweryMap
//
//  Created by Yoshito Komiya on 2017/07/25.
//  Copyright © 2017 Yoshito Komiya. All rights reserved.
//

import UIKit

class BeerDetailViewController: UIViewController {

    @IBOutlet weak var beerRallyCollectionView: UICollectionView!
    @IBOutlet weak var beerPlaceLogoImage: UIImageView!
    @IBOutlet weak var beerPlaceName: UILabel!
    @IBOutlet weak var beerPlaceAddress: UILabel!
    @IBOutlet weak var beerPlacePhoneNumber: UILabel!
    @IBOutlet weak var beerPlaceSocialMedia: UITextView!
    @IBOutlet weak var beerPlaceWebsite: UITextView!
    @IBOutlet weak var beerPlaceDetail: UITextView!
    @IBOutlet weak var segDetailAndBeerRally: UISegmentedControl!
    @IBOutlet var beerRallyView: UIView!
    
    var beerName: String!
    var beerAddress: String!
    var beerPhoneNumber: String!
    var beerWebsite: String!
    var beerSocialMedia: String!
    var beerLogoImage: String!
    var beerDetail: String!
    var myBeers = [Beer]()
    var isShowView = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "detailBackgroundPhoto")!)
        self.navigationController?.navigationBar.addSubview(segDetailAndBeerRally)
        showView()
        
        beerRallyCollectionView.dataSource = self
        beerPlaceName.text = beerName
        beerPlaceAddress.text = beerAddress
        beerPlacePhoneNumber.text = beerPhoneNumber
        beerPlaceWebsite.text = beerWebsite
        beerPlaceSocialMedia.text = beerSocialMedia
        beerPlaceLogoImage.image = UIImage(named: beerLogoImage)
        beerPlaceDetail.text = beerDetail
    }
    
    
    @IBAction func changeSeg(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            showView()
        case 1:
            hideView()
        default:
            print("Error")
        }
    }
    
    private func showView() {
        UIView.animate(withDuration: 0.5, animations: {[weak self] () -> Void in
            if let weakSelf = self {
                weakSelf.beerRallyView.transform = CGAffineTransform(scaleX: 0.5, y: 0.5);
                weakSelf.beerRallyView.alpha = 0;
            }
            
            }, completion: {[weak self] (complated) -> Void in
                if let weakSelf = self {
                    weakSelf.view.subviews.last?.removeFromSuperview()
                }
        })
    }

    private func hideView() {
        beerRallyView.center = self.view.center
        self.view.addSubview(beerRallyView)
        UIView.animate(withDuration: 0.5, animations: {[weak self] () -> Void in
            
            if let weakSelf = self {
                weakSelf.beerRallyView.alpha = 1
                weakSelf.beerRallyView.transform = CGAffineTransform(scaleX: 1.5, y: 1.5);
            }
        })
    }
}


extension BeerDetailViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return myBeers.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = beerRallyCollectionView.dequeueReusableCell(withReuseIdentifier: "beerPlaceLogoImage", for: indexPath) as! BeerRallyCellCollectionViewCell
        
        let beer = myBeers[indexPath.row]
        if let imageName = beer.logoImage {
            cell.beerPlaceLogoImage.image = UIImage(named: imageName)
        } else {
            cell.beerPlaceLogoImage.image = UIImage(named: "YellowDogBrewingCo")
        }
        
        cell.beerPlaceName.text = beerName
        
        return cell
    }
}
