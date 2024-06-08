//
//  ListBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Nguyen Anh Tuan on 8/6/24.
//  Add, edit, move, and delete items in a List in SwiftUI

import SwiftUI

struct ListBootcamp: View {
    @State var fruits = ["banana","Apple","Orange", "Peach"]
    @State var veggies = ["tomato","potato","carrot"]
    
    var body: some View {
        NavigationView {
            List {
                Section(header:
                            HStack {
                    Text("Fruits")
                    Image(systemName: "flame.fill")
                }
                    .font(.headline)
                    .foregroundStyle(.orange)
                )
                {
                    ForEach(fruits,id: \.self) { fruit in
                        Text("\(fruit.capitalized)")
                    }
                    .onDelete(perform: deleteFunc)
                    .onMove(perform: moveFunc)
                    //                    .listRowBackground(Color.green)
                }
                
                Section(header: Text("Veggies"))
                {
                    ForEach(veggies,id: \.self) { veggie in
                        Text("\(veggie.capitalized)")
                    }
                }
            }
            .accentColor(.purple)
            .listStyle(
                //                GroupedListStyle()
                //                InsetListStyle()
                SidebarListStyle()
            )
            .navigationTitle("Grocery List")
            .navigationBarItems(
                leading: EditButton(),
                trailing: Button("Add"){
                    addFunc()
                }
            )
        }.tint(.red)
    }
    
    private func deleteFunc (indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    private func moveFunc (indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    private func addFunc () {
        fruits.append("heheheh")
    }
}

#Preview {
    ListBootcamp()
}
