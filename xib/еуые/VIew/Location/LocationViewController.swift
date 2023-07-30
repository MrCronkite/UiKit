//
//  LocationViewController.swift
//  еуые
//
//  Created by admin1 on 29.07.23.
//

import UIKit
import CoreLocation
import MapKit

final class LocationViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //view.backgroundColor = .gray
        locationManager.delegate = self
        mapView.delegate = self
        requestLocationAuthorization()
    }
    
    @IBAction func plusZoomAction(_ sender: Any) {
        var region = mapView.region
                region.span.latitudeDelta *= 0.8
                region.span.longitudeDelta *= 0.8
                mapView.setRegion(region, animated: true)
    }
    
    @IBAction func minusZoomAction(_ sender: Any) {
        var region = mapView.region
                region.span.latitudeDelta *= 1.25
                region.span.longitudeDelta *= 1.25
                mapView.setRegion(region, animated: true)
        print("hello")
    }
    
    @IBAction func flipMAp(_ sender: Any) {
        print("hello")
        mapView.camera.heading = 180.0
    }
}

extension LocationViewController {
    
    private func requestLocationAuthorization() {
        switch locationManager.authorizationStatus {
        case .authorizedWhenInUse, .authorizedAlways:
            startUpdatingLocation()
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
        default: break
        }
    }
    
    func startUpdatingLocation() {
        locationManager.startUpdatingLocation()
    }
    
    
}

extension LocationViewController: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        // Вызывается, когда статус разрешения меняется
        if status == .authorizedWhenInUse {
            // Если разрешение предоставлено, начинаем обновление геопозиции
            startUpdatingLocation()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        // Вызывается, когда получены обновления геопозиции
           if  let lastLocation = locations.last{
               print("Me")
               let latitude = lastLocation.coordinate.latitude
               let longitude = lastLocation.coordinate.longitude
               let anotation = MKPointAnnotation()
               anotation.coordinate = .init(latitude: latitude, longitude: longitude)
               anotation.title = "Me"
               mapView.addAnnotation(anotation)
           }
       }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        // Вызывается, если произошла ошибка при получении геопозиции
        print("Ошибка при получении геопозиции: \(error.localizedDescription)")
    }
}
