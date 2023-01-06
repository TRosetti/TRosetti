//
//  GridBootcamp-16.swift
//  BootcampSwiftUI
//
//  Created by Thiago Rosetti Miranda on 12/23/22.
//

import SwiftUI

struct GridBootcamp_16: View {
    var body: some View {
        LazyVGrid(columns: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Columns@*/[GridItem(.fixed(200))]/*@END_MENU_TOKEN@*/) {
            
            /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
            /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
        }
    }
}

struct GridBootcamp_16_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamp_16()
    }
}
