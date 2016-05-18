//
//  WelcomeViewController.swift
//  ScavengerHunt
//
//  Created by Lauren Nicole Roth on 5/18/16.
//  Copyright © 2016 Lauren Nicole Roth. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import CoreLocation
import GoogleMaps

class WelcomeViewController: UIViewController, CLLocationManagerDelegate {
    
    var locationManager: CLLocationManager?
    var latitude: Double = 0.0
    var longitude: Double = 0.0
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        activityIndicator.alpha = 0.0

        setupLocationManager()
    }
    
    func setupLocationManager() {
        locationManager = CLLocationManager()
        self.locationManager?.delegate = self
        self.locationManager?.desiredAccuracy = kCLLocationAccuracyBest
        self.locationManager?.requestAlwaysAuthorization()
        self.locationManager?.distanceFilter = 100.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
