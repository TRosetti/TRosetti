//
//  RideType.swift
//  UberSwiftUiTutorial
//
//  Created by Thiago Rosetti Miranda on 12/16/22.
//

import Foundation


enum RideType: Int, CaseIterable, Identifiable{
    case uberX
    case black
    case uberXL
    
    var id: Int {return rawValue}
    
    var description: String {
        switch self {
        case .uberX: return "UberX"
        case .black: return "UberBlack"
        case .uberXL: return "UberXL"
        }
    }
    
    var imageName: String {
        switch self {
        case .uberX: return "uber-x"                // essas string são os nosmes que estão na imagem dos carros
        case .black: return "uber-black"            // se colocar outro nome da errado
        case .uberXL: return "uber-x"
        }
    }
    
    var baseFare: Double{
        switch self {
        case .uberX: return 5
        case .black: return 20
        case .uberXL: return 10
        }
    }
    
    func computerPrice(for distanceInMeters: Double) -> Double {
        let distanceInMiles = distanceInMeters / 1600
         
        switch self {
        case .uberX: return distanceInMiles * 1.5 + baseFare
        case .black: return distanceInMiles * 2.0 + baseFare
        case .uberXL: return distanceInMiles * 1.75 + baseFare
        }
    }
}
