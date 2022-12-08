//
//  BackgroundAndOverlayBootcamp.swift
//  BootcampSwiftUI
//
//  Created by Thiago Rosetti Miranda on 6/18/22.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
//        Text("T.Rosetti")
//            .font(.title)
//            .frame(width: 150, height: 150)
//            .background(
//                Circle()
//                    .fill(.blue)
//            )
//            .frame(width: 180, height: 180)
//            .background(
//            Circle()
//                .fill(.red))
//
        Circle()
            .fill(.blue)
            .frame(width: 100, height: 100)
            .overlay(Text("1")
                .font(.largeTitle)
                .foregroundColor(.white)
            )
            
            .background(
                Circle()
                    .fill(.green)
                    .frame(width: 110, height: 110)
            )
            
    
            
    }
}

struct BackgroundAndOverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayBootcamp()
    }
}
