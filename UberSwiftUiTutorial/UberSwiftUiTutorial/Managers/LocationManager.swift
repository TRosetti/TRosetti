//
//  LocationManager.swift
//  UberSwiftUiTutorial
//
//  Created by Thiago Rosetti Miranda on 12/8/22.
//

import CoreLocation

class LocationManager: NSObject, ObservableObject{
    private let locationManager = CLLocationManager()
    static let shared = LocationManager()
    @Published var userLocation: CLLocationCoordinate2D?
    
    override init(){
        super.init()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        // Essa linha de cima pega a precisão mais precisa possível
        locationManager.requestWhenInUseAuthorization()
        // A linha a cima é utilizada para solicitar a localização ao usuário
        locationManager.startUpdatingLocation()
        // A linha a cima é para atualizar a localização
    }
}

extension LocationManager: CLLocationManagerDelegate{
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else {return}
        self .userLocation = location.coordinate
        locationManager.stopUpdatingLocation()
    }
}
