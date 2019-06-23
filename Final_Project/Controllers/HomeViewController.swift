//
//  HomeViewController.swift
//  Final_Project
//
//  Created by Diego Garcia on 6/20/19.
//  Copyright © 2019 Diego Garcia. All rights reserved.
//

import UIKit
import MapKit
class HomeViewController: UIViewController {

    @IBOutlet weak var homeMapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentLocation()

    }
    
    func currentLocation() {
    
        let initialLocation = CLLocation(latitude: -34.910418, longitude: -56.138631)
        let regionRadius: CLLocationDistance = 1000
    
        func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate,
                                                  latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        homeMapView.setRegion(coordinateRegion, animated: true)
    }
        centerMapOnLocation(location: initialLocation)


}

}
