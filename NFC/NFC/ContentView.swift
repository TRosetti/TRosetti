//
//  ContentView.swift
//  NFC
//
//  Created by Thiago Rosetti Miranda on 7/15/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "wave.3.left.circle")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                
                .foregroundColor(.blue)
            
                .padding(20)
            Button("Save".uppercased()) {
                scanNfc()
            }
            .frame(width: 180, height: 70)
            .background(.blue)
            .cornerRadius(10)
            .foregroundColor(.white)
            .font(.title)
            
        }
        
    }
}

func scanNfc(){
   print("Deu certo!")
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
