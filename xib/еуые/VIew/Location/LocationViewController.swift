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
        
        locationManager.delegate = self
        mapView.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
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
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        guard let annotation = annotation as? CustomAnnotaion else {
            return nil
        }
        
        let identifier = "customAnnotation"
        var annotationView: MKAnnotationView
        
        if let dequeuedView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier) {
            dequeuedView.annotation = annotation
            annotationView = dequeuedView
        } else {
            annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            annotationView.canShowCallout = true
            annotationView.layer.cornerRadius = 10
            annotationView.backgroundColor = .gray
            annotationView.image = annotation.image // Устанавливаем картинку для аннотации
            
            annotationView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
            
        }
        
        return annotationView
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
               let region = MKCoordinateRegion(center: lastLocation.coordinate, latitudinalMeters: 1000, longitudinalMeters: 1000)
               mapView.setRegion(region, animated: true)

               let latitude = lastLocation.coordinate.latitude
               let longitude = lastLocation.coordinate.longitude
               let coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
               let anotation = CustomAnnotaion(coordinate: coordinate, title: "ME", subtitle: "Vladislav Shimchenko", image: UIImage(systemName: "scooter"))
               mapView.addAnnotation(anotation)
               locationManager.stopUpdatingLocation()
           }
       }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        // Вызывается, если произошла ошибка при получении геопозиции
        print("Ошибка при получении геопозиции: \(error.localizedDescription)")
    }
}
