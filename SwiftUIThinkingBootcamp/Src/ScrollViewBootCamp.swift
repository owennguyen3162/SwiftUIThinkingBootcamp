//
//  ScrollViewBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Nguyen Anh Tuan on 12/5/24.
//

//Implementing a ScrollView in SwiftUI

import SwiftUI

struct ScrollViewBootCamp: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<100) { index in
                    ScrollView(.horizontal,showsIndicators: false ,content: {
                        HStack {
                            ForEach(0..<10) { index in
                                RoundedRectangle(cornerRadius: 15)
                                .fill(.white)
                                .frame(width: 200, height: 150)
                                .shadow(radius: 10)
                                .padding()
                                
                            }
                        }
                            
                      
                    })
                }
            }
        }
    }
}

#Preview {
    ScrollViewBootCamp()
}
