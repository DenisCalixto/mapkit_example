//
//  Pin.swift
//  Found
//
//  Created by Denis Calixto on 11/18/19.
//  Copyright © 2019 Langara. All rights reserved.
//

import MapKit

class Pin: NSObject, MKAnnotation {
    
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    
    init(coordinate: CLLocationCoordinate2D) {
        self.coordinate = coordinate
    }
}
