//
//  InitializerBootcamp-13.swift
//  BootcampSwiftUI
//
//  Created by Thiago Rosetti Miranda on 12/21/22.
//

import SwiftUI

struct InitializerBootcamp_13: View {
    
//    let backgroundColor: Color = Color.red
    let backgroundColor: Color // se fizermos assim, tem que mudar la em baixo
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
    
        
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        }else{
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
    }
    
    enum Fruit{
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing: 10){
            Text("\(count)")
                .font(.largeTitle)
                .underline()
            Text("\(title)")
                .font(.headline)
//            Image(systemName: "applelogo")
//                .font(.largeTitle)
        }
        
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
        .foregroundColor(.white)
        
    }
}

struct InitializerBootcamp_13_Previews: PreviewProvider {
    static var previews: some View {
        HStack{
            InitializerBootcamp_13(count: 55, fruit: .apple )
            InitializerBootcamp_13(count: 100, fruit: .orange )
        }
        
    }
}
