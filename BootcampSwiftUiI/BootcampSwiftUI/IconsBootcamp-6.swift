//
//  IconsBootcamp.swift
//  BootcampSwiftUI
//
//  Created by Thiago Rosetti Miranda on 6/7/22.
//

/*
 https://www.youtube.com/watch?v=Giq8jRnh0Gk&list=PLwvDm4VfkdphqETTBf-DdjCoAvhai1QpO&index=7*/

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
            .resizable()
            .renderingMode(.original)
//            .aspectRatio(contentMode: .fill)
//            .scaledToFit()
        //esse modo a cima faz com que o icone fique só no espaço do frame, as vezes da uma deformada
            .scaledToFill()
        //esse modo a cima faz com que o icone pegue a maior parte possivel do frame, as vezes ultrapassa o frame por pouco
//            .font(.largeTitle)
//            .font(.caption)
            .foregroundColor(.gray)
            .frame(width: 200, height: 200)
            .clipped()
        //Esse usado usado junto com o scaledToFill, ele corta o que esta passando do frame 
        
            
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}
