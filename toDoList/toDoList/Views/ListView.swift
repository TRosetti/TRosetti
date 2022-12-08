//
//  ListView.swift
// MyList
//
//  Created by Thiago Rosetti Miranda on 5/13/22.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var listViewModels: ListViewModel
   
    var body: some View {
        VStack{
            HStack{
                if listViewModels.items.isEmpty{
                    NoItemsView()
                        .transition(AnyTransition.opacity.animation(.easeIn))
                }else{
                    List{
                        ForEach(listViewModels.items){ item in
                            ListRowView(item: item)
                                .onTapGesture {
                                    withAnimation(.linear){
                                        listViewModels.updateItem(item: item)
                                    }
                                    
                                }
                        }
                        .onDelete(perform: listViewModels.deleteItem)
                        .onMove(perform: listViewModels.moveItem)
                        
                        
                        }
                }
                
               
            }
                 BottomVIew()
        }
        .listStyle(.plain)
        .navigationTitle("MyList")
            .navigationBarItems(
                leading: EditButton() ,
                trailing:
            NavigationLink("Add", destination: AddView())
            )
    }
  
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            NavigationView{
                ListView()
            }
            .preferredColorScheme(.light)
            .environmentObject(ListViewModel())
        
            NavigationView{
            ListView()
            }
            .preferredColorScheme(.dark)
            .environmentObject(ListViewModel())
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

