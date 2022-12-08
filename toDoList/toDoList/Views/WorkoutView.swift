//
//  WorkoutView.swift
//  toDoList
//
//  Created by Thiago Rosetti Miranda on 6/12/22.
//

import SwiftUI

struct WorkoutView: View {
    var body: some View {
        ScrollView{
            Text("Welcome to WorkoutView")
                .fontWeight(.bold)
        }
    }
}

struct WorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutView()
    }
}
