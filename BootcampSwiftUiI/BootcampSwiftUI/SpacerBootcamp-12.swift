//
//  SpacerBootcamp-12.swift
//  BootcampSwiftUI
//
//  Created by Thiago Rosetti Miranda on 6/25/22.
//

import SwiftUI

struct SpacerBootcamp_12: View {
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "xmark").font(.largeTitle)
                Spacer()
                    .frame(height: 10)
                    .background(.orange)
                Image(systemName: "gear").font(.largeTitle)
                
            }
            Spacer()
                .frame(width: 10)
                .background(.orange)
            
            HStack(spacing: 50){
            
                Rectangle()
                    .fill(.green)
                    .frame(width: 100, height: 100)
                
                Rectangle()
                    .fill(.red)
                    .frame(width: 100, height: 100)
                }.background(.blue)
               
        }.padding()
    }
}

struct SpacerBootcamp_12_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp_12()
    }
}


//HStack(spacing: 50){
//
//Rectangle()
//    .fill(.green)
//    .frame(width: 100, height: 100)
//
//Rectangle()
//    .fill(.red)
//    .frame(width: 100, height: 100)
//}.background(.blue)
