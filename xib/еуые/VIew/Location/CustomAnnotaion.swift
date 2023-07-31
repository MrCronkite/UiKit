//
//  CustomAnnotaion.swift
//  еуые
//
//  Created by admin1 on 31.07.23.
//

import MapKit

final class CustomAnnotaion: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    var image: UIImage?
    
    init(coordinate: CLLocationCoordinate2D, title: String?, subtitle: String?, image: UIImage?) {
        self.coordinate = coordinate
        self.title = title
        self.subtitle = subtitle
        self.image = image
        super.init()
    }
}
