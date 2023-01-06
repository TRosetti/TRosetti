//
//  ForEachBootcamp-14.swift
//  BootcampSwiftUI
//
//  Created by Thiago Rosetti Miranda on 12/23/22.
//

import SwiftUI

struct ForEachBootcamp_14: View {
    
    let data: [String] = ["👻", "🕸", "🧑‍🚀"]
    let myString: String = "Hello"
    
    var body: some View {
        VStack{
            ForEach(data.indices){ c in
                Text("O item de numero \(c) no array, é: \(data[c])")
                
            }
        }
//        VStack{
//            ForEach(0..<11) { c in
//                    ZStack{
//                        Circle()
//                            .foregroundColor(.red)
//                            .frame(width: 50, height: 50)
//
//                        Text("\(c)")
//
//
//
//                }
//
//            }
//        }
    }
}

struct ForEachBootcamp_14_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp_14()
    }
}
 
