
//
//  BeerDetailViewController.swift
//  BeerBreweryMap
//
//  Created by Yoshito Komiya on 2017/07/25.
//  Copyright © 2017 Yoshito Komiya. All rights reserved.
//

import UIKit
import CoreData

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
    let shadowOffsetWidth: Int = 0
    let shadowOffsetHeight: Int = 5
    let shadowColor: UIColor? = UIColor.black
    let shadowOpacity: Float = 0.5
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "detailBackgroundPhoto")!)
        self.navigationController?.navigationBar.addSubview(segDetailAndBeerRally)
        
        beerRallyView.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: view.frame.width, height: view.frame.height))
        
        beerRallyCollectionView.dataSource = self
        beerRallyCollectionView.delegate = self
        
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
    
    // show the beerRallyView
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

    // hide the beerRallyView
    private func hideView() {
        beerRallyView.center = self.view.center
        self.view.addSubview(beerRallyView)
        UIView.animate(withDuration: 0.5, animations: {[weak self] () -> Void in
            if let weakSelf = self {
                weakSelf.beerRallyView.alpha = 1
                weakSelf.beerRallyView.transform = CGAffineTransform(scaleX: 1, y: 1);
            }
        })
    }
}


extension BeerDetailViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return myBeers.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = beerRallyCollectionView.dequeueReusableCell(withReuseIdentifier: "beerPlaceLogoImage", for: indexPath) as! BeerRallyCellCollectionViewCell
        
        let beer = myBeers[indexPath.row]
        if case beer.isVisited = false {
            if let imageName = beer.logoImage {
                cell.beerPlaceImage.image = UIImage(named: imageName)

                // show the beer place image like card view
                cell.layer.masksToBounds = false
                cell.layer.shadowColor = shadowColor?.cgColor
                cell.layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetHeight);
                cell.layer.shadowOpacity = shadowOpacity
                cell.isUserInteractionEnabled = true
            } else {
                cell.beerPlaceImage.image = UIImage(named: "YellowDogBrewingCo")
            }
//            cell.beerPlaceName.text = beer.name
        } else {
            if let imageName = beer.logoImage {
                cell.beerPlaceImage.image = UIImage(named: imageName)
                
                // show the beer place image like card view
                cell.layer.masksToBounds = false
                cell.layer.shadowColor = shadowColor?.cgColor
                cell.layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetHeight);
                cell.layer.shadowOpacity = shadowOpacity
                cell.isUserInteractionEnabled = true
                cell.alpha = 0.2
            } else {
                cell.beerPlaceImage.image = UIImage(named: "YellowDogBrewingCo")
            }

        }
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = self.view.frame.size.width / 3 - 2
        let height = self.view.frame.size.width / 3 - 2
        return CGSize(width: width, height: height)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = beerRallyCollectionView.cellForItem(at: indexPath)
        let alert = UIAlertController(
            title: myBeers[indexPath.row].name! + "🍺",
            message: "Do you want to stamp the place?", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action: UIAlertAction) in
            
            let beer = self.myBeers[indexPath.row] as NSManagedObject
            beer.setValue(true, forKey: "isVisited")
            
            do {
                try beer.managedObjectContext?.save()
                cell?.alpha = 0.2
                print(self.myBeers[indexPath.row].isVisited)
            } catch {
                let saveError = error as NSError
                print(saveError)
            }
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler:nil))
        present(alert, animated: true, completion: nil)
    }
}
