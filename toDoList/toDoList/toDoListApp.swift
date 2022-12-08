//
//  toDoListApp.swift
//  toDoList
//
//  Created by Thiago Rosetti Miranda on 5/13/22.
//

import SwiftUI

 /*
  MVVMA Architecture
  
  Model - data point
  View - Ui
  ViewModel - manages Model for View
  
*/

@main
struct toDoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }.navigationViewStyle(StackNavigationViewStyle())
            .padding(0)


            .environmentObject(listViewModel)
        }
    }
}
