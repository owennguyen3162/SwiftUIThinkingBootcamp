//
//  FramesBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Nguyen Anh Tuan on 28/4/24.
//

import SwiftUI

struct FramesBootCamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(.red)
            .frame(height: 100)
            .background(.blue)
            .frame(width: 150)
            .background(.green)
            .frame(maxWidth: .infinity)
            .background(.red)
            .frame(height: 400)
            .background(.gray)
            .frame(maxHeight: .infinity)
            .background(Color.brown)
    }
}

#Preview {
    FramesBootCamp()
}
