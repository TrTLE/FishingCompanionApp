//
//  LocationManager.swift
//  FishingCompanionApp
//
//  Created by Admin on 18/06/2019.
//  Copyright © 2019 Alexis PAQUIN. All rights reserved.
//

import Foundation
import CoreLocation

protocol LocationManagerDelegate : class {
    func foundlocation(_ location : CLLocation)
    func locationerror(_ errorMessage : String)
}

@objc class LocationManager : NSObject, CLLocationManagerDelegate {
    var delagate : LocationManagerDelegate?
    
    let locationManager = CLLocationManager()

    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.requestAlwaysAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyKilometer
        locationManager.distanceFilter = 200
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last {
            delagate?.foundlocation(location)
        }
    }
    
    func startUpdatingLocation(){
        locationManager.startUpdatingLocation()
    }
    
    func stopUpdatingLcoation(){
        locationManager.stopUpdatingHeading()
    }
}
