//
//  ViewController.swift
//  Found
//
//  Created by Denis Calixto on 11/18/19.
//  Copyright © 2019 Langara. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    //private var url: String = "https://maps.apple.com/?q=37.331686,-122.030656"

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
        mapView.setUserTrackingMode(.follow, animated: true)
    }

    @IBAction func addButtonTapped(_ sender: UIBarButtonItem) {
        let pin = Pin(coordinate: mapView.userLocation.coordinate)
        pin.title = "Hello Denis"
        pin.subtitle = "Lat: \(mapView.userLocation.coordinate.latitude) Long: \(mapView.userLocation.coordinate.longitude)"
        mapView.addAnnotation(pin)
    }
    
    //    @IBAction func openMaps(_ sender: UIButton) {
//        if let search = URL(string: url) {
//            UIApplication.shared.open(search, options: [:], completionHandler: nil)
//        }
//    }
    
}

extension ViewController: MKMapViewDelegate {
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        let center = CLLocationCoordinate2D(
            latitude: userLocation.coordinate.latitude,
            longitude:  userLocation.coordinate.longitude
        )
        
        let width = 1000.0
        let height = 1000.0
        
        let region = MKCoordinateRegion(center: center, latitudinalMeters: width, longitudinalMeters: height)
        mapView.setRegion(region, animated: true)
    }
}

