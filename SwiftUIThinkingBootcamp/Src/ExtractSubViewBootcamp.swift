//
//  ExtractSubViewBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Nguyen Anh Tuan on 8/6/24.
//

//How to Extract Subviews in SwiftUI | Bootcamp #21

import SwiftUI

struct ExtractSubViewBootcamp: View {
    var body: some View {
        ZStack {
            Color.purple.ignoresSafeArea(.all)
            VStack {
                contentLayer
                contentLayer
                contentLayer
            }
        }
    }
    
    var contentLayer: some View {
        HStack {
            MyItem(title: "Apples", id: "1", Color: .red)
            MyItem(title: "Bananas", id: "2", Color: .yellow)
            MyItem(title: "Oranges", id: "1", Color: .orange)
        }
    }
    
   
}

#Preview {
    ExtractSubViewBootcamp()
}

struct MyItem: View {
    
    let title, id: String
    let Color: Color
    
    var body: some View {
        VStack {
            Text(id)
            Text(title)
        }
        .padding()
        .background(Color)
        .cornerRadius(10)
    }
}
