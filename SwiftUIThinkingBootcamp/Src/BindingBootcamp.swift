//
//  BindingBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Nguyen Anh Tuan on 8/6/24.
//  How to use @Binding property wrapper in SwiftUI

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor: Color = .green
    @State var title = "Title"
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea(.all)
            VStack(spacing: 10) {
                Text(title)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(.red)
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    @Binding var title: String
    @State var buttonColor: Color = .white
    
    var body: some View {
        Button(action: {
            backgroundColor = .yellow
            buttonColor = .red
            title = "New Title"
        }, label: {
            Text("Press me")
                .font(.title)
                .padding(10)
                .background(buttonColor)
                .cornerRadius(10)
        })
    }
}
#Preview {
    BindingBootcamp()
}
