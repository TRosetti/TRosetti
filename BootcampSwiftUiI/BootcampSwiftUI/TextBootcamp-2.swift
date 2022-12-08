//
//  TextBootcamp.swift
//  BootcampSwiftUI
//
//  Created by Thiago Rosetti Miranda on 6/7/22.
//

/*
https://www.youtube.com/watch?v=RKfkG01x79w&list=PLwvDm4VfkdphqETTBf-DdjCoAvhai1QpO&index=3
*/

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World!".capitalized)
            .font(.largeTitle)
//            .fontWeight(.semibold)
//           .bold()
//            .underline()
//            .underline(true, color:Color.blue)
//            .italic()
//            .font(.system(size: 24, weight: .semibold, design: .serif))
//            .baselineOffset(-50)
//            .kerning(10)
            .strikethrough(true, color: .blue)
            .multilineTextAlignment(.leading)
            .foregroundColor(.red)
            .frame(width: 300, height: 200, alignment: .bottomLeading)
            .minimumScaleFactor(0.1)
            

    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}





