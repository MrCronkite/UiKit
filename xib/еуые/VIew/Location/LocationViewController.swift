//
//  LocationViewController.swift
//  еуые
//
//  Created by admin1 on 29.07.23.
//

import UIKit
import CoreLocation

final class LocationViewController: UIViewController {
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        locationManager.delegate = self
        
        requestLocationAuthorization()
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
               let geoCoder = CLGeocoder()
               geoCoder.reverseGeocodeLocation(lastLocation){ placemarks,error in
                   if let placemark = placemarks?.first{
                       let adress = "\(placemark.locality ?? "") \(placemark.thoroughfare ?? "")"
                       print(adress)
                   }
               }
           }
       }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        // Вызывается, если произошла ошибка при получении геопозиции
        print("Ошибка при получении геопозиции: \(error.localizedDescription)")
    }
}
