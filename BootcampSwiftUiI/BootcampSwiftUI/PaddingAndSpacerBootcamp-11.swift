//
//  PaddingAndSpacerBootcamp-11.swift
//  BootcampSwiftUI
//
//  Created by Thiago Rosetti Miranda on 6/22/22.
//

import SwiftUI

struct PaddingAndSpacerBootcamp_11: View {
    var body: some View {
        Text("Hello, World!")
            //.foregroundColor(.white)
            .font(.largeTitle)
            .fontWeight(.semibold)
//            .background(.yellow)
            .padding()
//            .padding(.all, 10)
//            .padding(10)
//            .padding(.trailing)
//            .padding(.leading)
//            .padding(.top)
//            .padding(.bottom)
            .background(.blue)
            
        // Muitas das vezes quando o text não vai ser o com um frame especifico, é bom botar padding, antes do background, pois vai ficar dinamico
            
// MARK: - another scream
        
        VStack(alignment: .leading){
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 10)
            Text("This is the description of what we will do on this scream. It is multiple lines and we will align the text to the leading edge.")
//                .multilineTextAlignment(.leading)
//            não precisamos desse alinhamento, pois o padrão já é na esquerda
               
        }
        .padding()
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: Color.black.opacity(0.3),
                    radius: 10,
                    x: 0,
                    y: 10)
        )
        .padding(.horizontal, 10)
    }
}

struct PaddingAndSpacerBootcamp_11_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacerBootcamp_11()
    }
}
