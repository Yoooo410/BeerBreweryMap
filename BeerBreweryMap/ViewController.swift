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

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var beerTableView: UITableView!
    
    var searchBar: UISearchBar!
    var myBeers = [Beer]()
    var searchResult = [Beer]()

    var locationManager: CLLocationManager?
    var startLocation: CLLocation?
    
    var beer: Beer?
    let shadowOffsetWidth: Int = 1
    let shadowOffsetHeight: Int = 2
    let shadowColor: UIColor? = UIColor.black
    let shadowOpacity: Float = 0.5

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.delegate = self
        beerTableView.delegate = self
        beerTableView.dataSource = self
        setupSearchBar()

        locationManager = CLLocationManager()
        locationManager?.delegate = self
        locationManager?.desiredAccuracy = kCLLocationAccuracyBest
        locationManager?.requestAlwaysAuthorization()

        
        
    }
    
    func setDistanceFromCurrentLocation(beer: Beer) {
        
        let beerLocation = CLLocation(latitude: beer.latitude, longitude: beer.longitude)
        
        if let currentloc = startLocation {
            let distanceMeter = beerLocation.distance(from: currentloc) * 10
            beer.distance = round(distanceMeter / 1000) / 10
        }
    }
    
    func setup() {
        let viewContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Beer")
        
        do {
            let beers = try viewContext.fetch(fetchRequest) as! [Beer]
            self.myBeers = beers
            searchResult = myBeers
            
            for beer in self.myBeers {
                let coord = CLLocation(latitude: beer.latitude, longitude: beer.longitude)
                self.addAnnotation(coord: coord, beer: beer)
                self.setDistanceFromCurrentLocation(beer: beer)
            }
        } catch {
            print("Fetching Failed")
        }
    }
}



// MARK: MKMapViewDelegate
extension ViewController: MKMapViewDelegate {
    
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
        } else {
            pinView?.annotation = annotation
        }
        return pinView
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
}



// MARK: CLLocationManagerDelegate
extension ViewController: CLLocationManagerDelegate {

    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error.localizedDescription)
    }
    
    // set the present user's Location and the region
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        if startLocation == nil {
            startLocation = locations.first
            setup()
            let lat = locationManager?.location?.coordinate.latitude
            let lon = locationManager?.location?.coordinate.longitude
            
            let center = CLLocationCoordinate2D(latitude:lat!, longitude: lon!)
            let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02))
            
            mapView.showsUserLocation = true
            mapView.showsCompass = true
            mapView.showsScale = true
            mapView.showsTraffic = true
            self.mapView.setRegion(region, animated: true)
            self.beerTableView.reloadData()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == .authorizedWhenInUse || status == .authorizedAlways {
            locationManager?.startUpdatingLocation()
        }
    }
}



// MARK: UISearchBarDelegate
extension ViewController: UISearchBarDelegate {
    
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
}



// MARK: UITableViewDelegate
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    // set the number of the cell
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchResult.count
    }
    
    
    // set these infomation(name,address,logoimage,distance) to a cell of the BeerPlaceTableView
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BeerPlaceCell", for: indexPath) as! BeerPlaceTableViewCell
        return cell
    }
    
    // set the information in the tableview after searching
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let beer = searchResult[indexPath.row]
        let cell = cell as! BeerPlaceTableViewCell
        
        if let imageName = beer.logoImage {
            cell.beerImageView.image = UIImage(named: imageName)
        } else {
            cell.beerImageView.image = UIImage(named: "YellowDogBrewingCo")
        }
        cell.layer.masksToBounds = false
        cell.layer.shadowColor = shadowColor?.cgColor
        cell.layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetHeight);
        cell.layer.shadowOpacity = shadowOpacity
        cell.accessoryType = .disclosureIndicator
        cell.beerPlaceName.text = beer.name!
        cell.beerPlaceAddress.text = beer.address!
        cell.destance.text = String(beer.distance)
    }

    
    // define the segu which sent the information to the BeerDetailViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showBeerDetail", let destination = segue.destination as? BeerDetailViewController {
            if let cell = sender as? BeerPlaceTableViewCell, let indexPath = beerTableView.indexPath(for: cell) {
                let beer = searchResult[indexPath.row]
                destination.beer = beer
                destination.myBeers = myBeers
            }
        }
    }
}
