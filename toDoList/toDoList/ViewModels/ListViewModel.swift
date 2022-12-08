//
//  ListViewModel.swift
//  toDoList
//
//  Created by Thiago Rosetti Miranda on 5/15/22.
//

import Foundation

/*
 
CRUD FUCTIONS
 
 Creat
 Read
 Update
 Delete
 
*/

class ListViewModel: ObservableObject {
 
    @Published var items:[ItemModel] = []{
        didSet{
            saveItems()
        }
    }
    let itemsKey: String = "items_list"
    
    init() {
        getItems()
    }
    
    func getItems(){
        guard
            let data = UserDefaults.standard.data(forKey: itemsKey),
            let savedItems = try? JSONDecoder().decode([ItemModel].self, from: data)
        else {return}
        
        self.items = savedItems
    }
    
    func deleteItem(indexset: IndexSet){
        items.remove(atOffsets: indexset)
    }
    func moveItem(from: IndexSet, to: Int){
        items.move(fromOffsets: from, toOffset: to)
    }
    func addItem(title: String){
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    func updateItem(item: ItemModel){
        if let index = items.firstIndex(where: { $0.id == item.id}){
            items[index] = item.updatecompletion()
        }
    }
    func saveItems(){
        if let encodeData = try? JSONEncoder().encode(items){
            UserDefaults.standard.set(encodeData, forKey: itemsKey)
        }
    }
}
