//
//  GradientsBootcamp.swift
//  BootcampSwiftUI
//
//  Created by Thiago Rosetti Miranda on 6/7/22.
//

/*
 https://www.youtube.com/watch?v=EPoxQHwVnj0&list=PLwvDm4VfkdphqETTBf-DdjCoAvhai1QpO&index=6
 */

import SwiftUI

struct GradientsBootcamp: View {
    var LG = LinearGradient(
        colors: [Color(.systemTeal), Color(.systemPurple)],
        startPoint: .leading,
        endPoint: .trailing
    )
    var body: some View {
        VStack{
            
            
            
            Button{
                print("Gradient Button 1")
            }label: {
                Text("Thiago Rosetti Miranda")
                    .bold()
                    .frame(width: 280, height: 50)
                    .foregroundColor(Color.primary)
                    .background(LG)
                    .clipShape(Capsule())
                
            }
            
                
            
            Button{
                print("Gradient Button 2")
            }label: {
                LG
                .mask(
                    Text("Thiago Rosetti Miranda")
                        .bold()
                        .frame(width: 280, height: 50)
                        .foregroundColor(.primary)
                        .overlay(Capsule().stroke(lineWidth: 8).fill(LG))
                ).frame(width: 300, height: 70)
            }
            LG
            .mask(
                // 1
                Text("The simplicity of Apple.\nIn a credit card.")
                    .font(Font.system(size: 46, weight: .bold))
                    .multilineTextAlignment(.center)
            )
            
            
            
            

                
        }
    
            
    }
}

struct GradientsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootcamp()
            .preferredColorScheme(.dark)
        
        
    }
}
