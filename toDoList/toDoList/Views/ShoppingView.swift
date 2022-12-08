//
//  ShoppingView.swift
//  toDoList
//
//  Created by Thiago Rosetti Miranda on 5/23/22.
//

import SwiftUI

struct ShoppingView: View {
    var body: some View {
        ScrollView{
            Text("Welcome to ShoppingView")
                .fontWeight(.bold)
        }
    }
}

struct ShoppingView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ShoppingView()
        }
    }
}
