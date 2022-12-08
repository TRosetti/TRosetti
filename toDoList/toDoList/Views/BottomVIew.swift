//
//  BottomVIew.swift
//  toDoList
//
//  Created by Thiago Rosetti Miranda on 5/21/22.
//

import SwiftUI

struct BottomVIew: View {
    var body: some View {
        ScrollView(.horizontal){
            HStack{
              
//                ForEach(bottomIteims, id: \.self) { i in
//                    NavigationLink(i, destination: ShoppingView())
//                        .padding(15)
                NavigationLink("Shopping", destination: ShoppingView())
                    .padding(.leading, 15)
                    .padding(.bottom, 15)
                NavigationLink("Daily", destination: DailyView())
                    .padding(.leading, 15)
                    .padding(.bottom, 15)
                NavigationLink("Study", destination: StudyView())
                    .padding(.leading, 15)
                    .padding(.bottom, 15)
                NavigationLink("Workout", destination: WorkoutView())
                    .padding(.leading, 15)
                    .padding(.bottom, 15)
                NavigationLink("NewItem", destination: NewItemView())
                    .padding(.leading, 15)
                    .padding(.bottom, 15)
        
                        
                        
                }
            }

            .font(.headline)
            .foregroundColor(.accentColor)
        }
        
    }


struct BottomVIew_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            BottomVIew()
        }
    }
}
