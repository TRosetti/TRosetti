//
//  AddView.swift
//  toDoList
//
//  Created by Thiago Rosetti Miranda on 5/13/22.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModels: ListViewModel
    @State var textFieldText: String = ""
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    var body: some View {
        ScrollView{
            VStack {
                TextField("Type something here...", text: $textFieldText )
                    .padding(.horizontal)
                    .frame(height: 50)
                    .background(Color(uiColor: .secondarySystemBackground))
                    .cornerRadius(10)
                
                Button("Save".uppercased()) {
                    saveButtonPressed()
                }
                    .foregroundColor(.white)
                    .font(.headline)
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
                    .background(Color.accentColor)
                    .cornerRadius(10)
                    
                
            }.padding(14)
        }
        .navigationTitle("Add an Item")
        .alert(isPresented: $showAlert, content: getAlert)
    }
    func saveButtonPressed(){
        if textIsAppropriate(){
            listViewModels.addItem(title: textFieldText)
            presentationMode.wrappedValue.dismiss()
        }
    }
    func textIsAppropriate() -> Bool{
        if textFieldText.count < 3{
            alertTitle = "Your new toDO item must be at leats 3 characters long!!!"
            showAlert.toggle()
            return false
        }
        return true
    }
    func getAlert() -> Alert{
        return Alert(title: Text(alertTitle))
    }
    
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            NavigationView{
                ListView()
            }
            .preferredColorScheme(.dark)
            .environmentObject(ListViewModel())
        
            NavigationView{
            ListView()
            }
            .preferredColorScheme(.light)
            .environmentObject(ListViewModel())
        }
    }
}
