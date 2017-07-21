//
//  ViewController.swift
//  BeerBreweryMap
//
//  Created by Yoshito Komiya on 2017/07/20.
//  Copyright © 2017 Yoshito Komiya. All rights reserved.
//

import UIKit
import MapKit
//import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    var myBeers = [Beer]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let viewContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        do {
            let beers = try viewContext.fetch(Beer.fetchRequest()) as [Beer]
            DispatchQueue.main.async {
                self.myBeers = beers
                
                let geocoder = CLGeocoder()
                for beers in self.myBeers {
                    print(beers.website!)
                    geocoder.geocodeAddressString(beers.address!, completionHandler: { (placemarks, error) in
                        if(error == nil) {
                            for placemark in placemarks! {
                                let location:CLLocation = placemark.location!
                                
                                //中心座標
                                let center = CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude)
                                
                                //表示範囲
                                let span = MKCoordinateSpanMake(0.010, 0.010)
                                
                                //中心座標と表示範囲をマップに登録する。
                                let region = MKCoordinateRegionMake(center, span)
                                self.mapView.setRegion(region, animated:true)
                                
                                //地図にピンを立てる。
                                let annotation = MKPointAnnotation()
                                annotation.coordinate = CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude)
                                self.mapView.addAnnotation(annotation)
                            }
                        } else {
                            print("Fetching Failed")
                        }
                    })
                }
            }
        }catch {
            print("Fetching Failed")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

