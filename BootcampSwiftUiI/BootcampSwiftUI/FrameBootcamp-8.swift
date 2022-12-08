//
//  FrameBootcamp.swift
//  BootcampSwiftUI
//
//  Created by Thiago Rosetti Miranda on 6/8/22.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text("Thiago Rosetti Miranda").foregroundColor(.white)
//            LinearGradient(gradient: Gradient(colors: [Color.red , Color.blue]), startPoint: .leading, endPoint: .trailing))
            .background(.secondary)
            .frame(width: 300, height: 200, alignment: .leading)
//            .background(.gray)
        
    }
}

struct FrameBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootcamp()
            .preferredColorScheme(.light)
           
    }
}
