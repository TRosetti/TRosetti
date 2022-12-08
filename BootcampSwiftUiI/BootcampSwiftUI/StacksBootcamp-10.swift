//
//  StacksBootcamp-10.swift
//  BootcampSwiftUI
//
//  Created by Thiago Rosetti Miranda on 6/19/22.
//

import SwiftUI

struct StacksBootcamp_10: View {
//MARK: - Stacks
    // VStack -> Vertical
    //HStack -> Horizontal
    //ZStack -> zIndex (back to front)
    
    var body: some View {
        
        VStack(spacing: 50){
            
            ZStack{
                Circle()
                    .frame(width: 100, height: 100)
                Text("1")
                    .foregroundColor(.white)
                    .font(.title)
            }
            Text("1")
                .foregroundColor(.white)
                .font(.title)
                .background(Circle()
                    .frame(width: 100, height: 100))
        }
        
        
        
        
        
        
        
        
        
        
        
//        VStack(spacing: 0){
//            Rectangle()
//                .frame(width: 200, height: 200)
//                .foregroundColor(.red)
//            Rectangle()
//                .frame(width: 200, height: 200)
//                .foregroundColor(.green)
//        }
//
//        ZStack{
//            Rectangle()
//                .frame(width: 300, height: 300)
//            VStack(alignment: .center, spacing: 0, content:{
//                HStack(alignment: .center, spacing: 0, content:{
//                    RoundedRectangle(cornerRadius: 10)
//                        .fill(Color.red)
//                        .frame(width: 100, height: 100)
//                    RoundedRectangle(cornerRadius: 10)
//                        .fill(Color.green)
//                        .frame(width: 100, height: 100) })
//                HStack(alignment: .center, spacing: 0, content:{
//                    RoundedRectangle(cornerRadius: 10)
//                        .fill(Color.blue)
//                        .frame(width: 100, height: 100)
//                    RoundedRectangle(cornerRadius: 10)
//                        .fill(Color.yellow)
//                        .frame(width: 100, height: 100)
//
//                })
//            })
//        }
    }
}

struct StacksBootcamp_10_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp_10()
    }
}
