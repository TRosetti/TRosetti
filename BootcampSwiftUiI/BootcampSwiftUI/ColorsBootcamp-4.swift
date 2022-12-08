//
//  ColorsBootcamp.swift
//  BootcampSwiftUI
//
//  Created by Thiago Rosetti Miranda on 6/7/22.
//

/*
 https://www.youtube.com/watch?v=pqnLevvM7Rs&list=PLwvDm4VfkdphqETTBf-DdjCoAvhai1QpO&index=5
 */

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                .primary
//                Color.accentColor
//                Color.blue
//                .blue
                Color("AccentColor")
            )
            .frame(width: 300, height: 200)
            .shadow(color: Color("AccentColor").opacity(0.5), radius: 10, x: -20, y: -20)
    }
}

struct ColorsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Group{
        ColorsBootcamp()
            .preferredColorScheme(.light)
            ColorsBootcamp()
                .preferredColorScheme(.dark)
        }
        
        
    }
}
