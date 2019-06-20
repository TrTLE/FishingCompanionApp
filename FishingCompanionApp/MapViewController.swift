//
//  MapViewController.swift
//  FishingCompanionApp
//
//  Created by Admin on 19/06/2019.
//  Copyright © 2019 Alexis PAQUIN. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController, MKMapViewDelegate, LocationManagerDelegate {
    
    private let dataBase = DataBaseProvider()
    
    @IBOutlet weak var ui_Map: MKMapView!
    private let locationManager = LocationManager()
    
    func foundlocation(_ location: CLLocation) {
        ui_Map.setCenter(location.coordinate, animated: true)
    }
    
    func locationerror(_ errorMessage: String) {
        print(errorMessage)
    }
    

    private var location = CLLocation()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        ui_Map.delegate = self
        locationManager.delagate = self
        locationManager.startUpdatingLocation()
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
