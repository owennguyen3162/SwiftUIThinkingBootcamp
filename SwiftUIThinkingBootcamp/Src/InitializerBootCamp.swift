//
//  InitializerBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Nguyen Anh Tuan on 12/5/24.
//

// How to use inits and enums in SwiftUI
import SwiftUI

struct InitializerBootCamp: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
       
        
        if fruit == .apple {
            self.backgroundColor = .red
            self.title = "Apples"
        } else {
            self.backgroundColor = .orange
            self.title = "Oranges"
        }
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing : 10) {
            Text("\(count)")
                .font(.title)
                .foregroundColor(.white)
                .underline()
            
            Text("\(title)")
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

#Preview {
    HStack {
        InitializerBootCamp(count: 12, fruit: .orange)
        InitializerBootCamp(count: 46, fruit: .apple)
    }
}
