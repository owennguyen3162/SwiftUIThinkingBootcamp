//
//  StateBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Nguyen Anh Tuan on 14/5/24.
//

//How to use @State property wrapper in SwiftUI

import SwiftUI

struct StateBootcamp: View {
    
    @State var backgrondColor: Color = Color.green
    @State var title: String = "nothing"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            
            backgrondColor.ignoresSafeArea(.all)
            
            VStack {
                Text(title)
                    .font(.title)
                    .padding(.bottom, 5)
                
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                    .padding(.bottom, 10)
                
                HStack {
                    Button("BUTTON 1") {
                        self.backgrondColor = .gray
                        self.title = "Button 1 was press"
                        self.count += 1
                    }
                    
                    Button("BUTTON 2") {
                        self.backgrondColor = .blue
                        self.title = "Button 2 was press"
                        self.count += 1
                    }
                    
                }
            }.foregroundColor(.white)
        }
    }
}

#Preview {
    StateBootcamp()
}
