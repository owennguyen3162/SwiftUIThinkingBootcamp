//
//  ButtonsBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Nguyen Anh Tuan on 14/5/24.
//

import SwiftUI

struct ButtonsBootcamp: View {
    
    @State var title: String = "this is my title"
    
    var body: some View {
        VStack {
            
            Text(title)
            
            Button(action: {
                self.title = "SAVE"
            }, label: {
                Text("SAVE")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(width: 200, height: 80)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            })
            
            Button(action: {
                self.title = "SAVE 2"
            }, label: {
                Circle()
                    .fill(.white)
                    .frame(width: 100, height: 100)
                    .shadow(radius: 20)
                    .overlay(content: {
                        Image(systemName: "heart.fill")
                            .font(.title)
                            .foregroundColor(.purple)
                    }).padding(.top, 10)
            })
            
            Button(action: {
                self.title = "SAVEssss"
            }, label: {
                Text("Finish".uppercased())
                    .font(.title3)
                    .bold()
                    .foregroundColor(.gray)
                    .padding(10)
                    .padding(.horizontal, 20)
                    .background(
                        Capsule().stroke(Color.gray,lineWidth: 1)
                    )
                    .padding(.top, 10)
            })
        }
    }
}

#Preview {
    ButtonsBootcamp()
}
