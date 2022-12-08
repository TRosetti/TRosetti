//
//  ImageBootcamp.swift
//  BootcampSwiftUI
//
//  Created by Thiago Rosetti Miranda on 6/7/22.
//

/*
 https://www.youtube.com/watch?v=MeoiHFdIeR8&list=PLwvDm4VfkdphqETTBf-DdjCoAvhai1QpO&index=8
 */

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("SpartanOfTrading")
//            .foregroundColor(.green)
            .resizable()
            .scaledToFill()
            .frame(width: 350, height: 220)
//            .foregroundColor(.green)
        
        //Esse .foregroundColor(.green) se juntar com o .foregroundColor(.green) da para modificar a cor da imagem, porem para ficar certo, a imagem não pode ter imagem no fundo, deve ter só uma camada
        
            .clipped()
            .cornerRadius(20)
//            .clipShape(
//                Circle()
//                RoundedRectangle(cornerRadius: 20)
//                Ellipse()
//                Capsule()
//                )
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
