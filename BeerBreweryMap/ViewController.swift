//
//  ViewController.swift
//  BeerBreweryMap
//
//  Created by Yoshito Komiya on 2017/07/20.
//  Copyright © 2017 Yoshito Komiya. All rights reserved.
//

import UIKit
import MapKit
import CoreData
import CoreLocation

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var beerTableView: UITableView!
    var searchBar: UISearchBar!
    var myBeers = [Beer]()
    var searchResult = [Beer]()
    var coords = [CLLocation]()
    var locationManager: CLLocationManager!
    var beerName: String = ""
    var beerAddress: String = ""
    var beerPhoneNumber: String = ""
    var beerWebsite: String = ""
    var beerSocialMedia: String = ""
    var beerLogoImage: String = ""
    var beerDetail: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.delegate = self
        beerTableView.delegate = self
        beerTableView.dataSource = self
        setupSearchBar()
        
        
        if (CLLocationManager.locationServicesEnabled()) {
            locationManager = CLLocationManager()
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.requestAlwaysAuthorization()
            locationManager.startUpdatingLocation()
        }
        
        
        let viewContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Beer")
        
        do {
            let beers = try viewContext.fetch(fetchRequest) as! [Beer]
            
            self.myBeers = beers
            for beer in self.myBeers {
                self.fetchLatLon(for: beer.address!, completion: { (location) in
                    self.addAnnotation(coord: location, beer: beer)
                    
                    beer.latitude = location.coordinate.latitude
                    beer.longitude = location.coordinate.longitude
                    let beerLocation = CLLocation(latitude: beer.latitude, longitude: beer.longitude)
                    
                    let currentLocation = CLLocation(latitude: (self.locationManager.location?.coordinate.latitude)!, longitude: (self.locationManager.location?.coordinate.longitude)!)
                        
                    let distanceMeter = beerLocation.distance(from: currentLocation) * 10
                    beer.distance = round(distanceMeter / 1000) / 10
                    self.beerTableView.reloadData()
                })
                
            }
            searchResult = myBeers
        } catch {
            print("Fetching Failed")
        }
    }
    
    // right before locating User on the mapview
    func mapViewWillStartLocatingUser(_ mapView: MKMapView) {
        
        if locationManager.location != nil {
            let lat = locationManager.location?.coordinate.latitude
            let lon = locationManager.location?.coordinate.longitude
            
            let center = CLLocationCoordinate2D(latitude:lat!, longitude: lon!)
            let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02))
            
            mapView.showsUserLocation = true
            mapView.showsCompass = true
            mapView.showsScale = true
            mapView.showsTraffic = true
            self.mapView.setRegion(region, animated: true)

        }
    }
    
    // set the present user's Location and the region
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
    }

    
    // add the annotation to the map view
    func addAnnotation(coord: CLLocation, beer: Beer){
        let coord = CLLocationCoordinate2D(latitude: coord.coordinate.latitude,
                                           longitude: coord.coordinate.longitude)
        let anno = MKPointAnnotation()
        anno.coordinate = coord
        anno.title = beer.name
        anno.subtitle = beer.address
        self.mapView.addAnnotation(anno)
    }
    
    // change the address to latitude and longtitude, and stock the array of [CLLocation]
    func fetchLatLon (for address: String, completion: @escaping (CLLocation) -> Void) {
        
        let geocoder = CLGeocoder()
        geocoder.geocodeAddressString(address) { (results, error) in
            if let location = results?.first?.location {
                self.coords.append(location)
                
                DispatchQueue.main.async {
                    completion(location)
                }
            }
        }
    }
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        print("selected")
        
    }
    
    // set the pin of each beer object's address to mapView
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation, beer: Beer) -> MKAnnotationView? {

        if annotation is MKUserLocation { return nil }
        let pinIdent = "Pin"
        var pinView = mapView.dequeueReusableAnnotationView(withIdentifier: pinIdent) as? MKPinAnnotationView
    
        if pinView == nil {
            pinView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: pinIdent)
            
//            let rightImageView = UIImageView(image: UIImage(named: beer.logoImage!))
//            rightImageView.frame = CGRect(x: 0, y: 0, width: 2, height: 2)
//            rightImageView.contentMode = .scaleAspectFit
//            pinView?.rightCalloutAccessoryView = rightImageView
            pinView?.canShowCallout = true
        } else {
            pinView?.annotation = annotation
        }
//        pinView?.image = UIImageView(image: UIImage(named: beer.logoImage!))
    
        return pinView
    }
}


extension ViewController: UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
    
    // set the search bar on the Navigation bar
    func setupSearchBar() {
        if let navigationBarFrame = navigationController?.navigationBar.bounds {
            let searchBar: UISearchBar = UISearchBar(frame: navigationBarFrame)
            searchBar.delegate = self
            searchBar.placeholder = "Search"
            searchBar.showsCancelButton = false
            searchBar.autocapitalizationType = UITextAutocapitalizationType.none
            searchBar.keyboardType = UIKeyboardType.default
            navigationItem.titleView = searchBar
            navigationItem.titleView?.frame = searchBar.frame
            self.searchBar = searchBar
            searchBar.becomeFirstResponder()
        }
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        // make an empty array
        searchResult.removeAll()
        
        if(searchBar.text == "") {
            // show all beer objects if there isn't any string in search ber
            searchResult = myBeers
        } else {
            // append the beer object which has the name included the key word
            for data in myBeers {
                if (data.name?.lowercased().contains(searchText.lowercased()))!{
                    searchResult.append(data)
                }
            }
        }
        // reload the BeerPlaceTableView
        beerTableView.reloadData()
    }
    
    // close the keyboard
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.endEditing(true)
    }
    
    
    // set the number of the cell
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchResult.count
    }
    
    
    // set these infomation(name,address,logoimage,distance) to a cell of the BeerPlaceTableView
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BeerPlaceCell", for: indexPath) as! BeerPlaceTableViewCell
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let beer = searchResult[indexPath.row]
        let cell = cell as! BeerPlaceTableViewCell
        
        if let imageName = beer.logoImage {
            cell.beerImageView.image = UIImage(named: imageName)
        } else {
            cell.beerImageView.image = UIImage(named: "YellowDogBrewingCo")
        }
        cell.accessoryType = .disclosureIndicator
        cell.beerPlaceName.text = beer.name!
        cell.beerPlaceAddress.text = beer.address!
        cell.destance.text = String(beer.distance)
        
    }
    
    // pass the data of these properties to detail page when select the cell of the BeerPlaceTableView
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        beerName = searchResult[indexPath.row].name!
        beerAddress = searchResult[indexPath.row].address!
        beerPhoneNumber = searchResult[indexPath.row].phoneNumber!
        beerWebsite = searchResult[indexPath.row].website!
        beerSocialMedia = searchResult[indexPath.row].socialMedia!
        beerLogoImage = searchResult[indexPath.row].logoImage!
        beerDetail = searchResult[indexPath.row].detail!
    
        performSegue(withIdentifier: "showBeerDetail", sender: nil)
    }
    
    
    // define the segu which sent the information to the BeerDetailViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "showBeerDetail") {
            let beerDetailVC: BeerDetailViewController = (segue.destination as? BeerDetailViewController)!

            beerDetailVC.beerName = beerName
            beerDetailVC.beerAddress = beerAddress
            beerDetailVC.beerPhoneNumber = beerPhoneNumber
            beerDetailVC.beerWebsite = beerWebsite
            beerDetailVC.beerSocialMedia = beerSocialMedia
            beerDetailVC.beerLogoImage = beerLogoImage
            beerDetailVC.beerDetail = beerDetail
        }
    }
}
