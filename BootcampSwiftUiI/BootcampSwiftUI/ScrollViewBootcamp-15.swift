//
//  ScrollViewBootcamp-15.swift
//  BootcampSwiftUI
//
//  Created by Thiago Rosetti Miranda on 6/25/22.
//

import SwiftUI

struct ScrollViewBootcamp_15: View {
    var body: some View {
        VStack{
            ScrollView{
                LazyVStack{
                    Image(systemName: "person.fill.badge.plus")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                        .font(.largeTitle)
                        
                    
                    ForEach(0..<100) { index in
                        ScrollView(.horizontal, showsIndicators: false, content: {
                            LazyHStack{
                                ForEach(0..<20) {index in
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(Color.white)
                                        .frame(width: 200, height: 100)
                                        .shadow(radius: 10)
                                        .padding()
                                    
                                    
                                }
                            }
                        })
                    }
                }
            }
            Text("Netflix")
                .fontWeight(.bold)
                
        }
    }
}

struct ScrollViewBootcamp_15_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamp_15()
    }
}
