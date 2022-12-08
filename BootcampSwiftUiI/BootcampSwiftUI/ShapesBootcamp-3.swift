//
//  ShapesBootcamp.swift
//  BootcampSwiftUI
//
//  Created by Thiago Rosetti Miranda on 6/7/22.
//

/*
 https://www.youtube.com/watch?v=1dWHjdWgS5M&list=PLwvDm4VfkdphqETTBf-DdjCoAvhai1QpO&index=4
 */

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Circle()
//        Ellipse()
//        Capsule(style: .circular)
//        Rectangle()
        RoundedRectangle(cornerRadius: 10)
//            .fill(Color.blue)
//            .foregroundColor(.green)
//            .stroke()
//            .stroke(Color.green)
//            .stroke(Color.red, lineWidth: 8)
//            .stroke(Color.orange, style: StrokeStyle(
//                lineWidth: 20,
//             lineCap: .square,
//             lineCap: .butt,
//                lineCap: .round,
//                dash: [30]) )
            .trim(from: 0.4, to: 1.0)
            .frame(width: 300, height: 200)
        
            .padding()
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
