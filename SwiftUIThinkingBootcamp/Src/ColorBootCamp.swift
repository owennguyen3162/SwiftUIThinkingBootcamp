//
//  ColorBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Nguyen Anh Tuan on 28/4/24.
//

import SwiftUI

struct ColorBootCamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20.0)
            .fill(
//                Color(UIColor.lightGray)
//                Color.green
                Color("MyCustomColor")
            )
            .shadow(color: .red, radius: 2, x: 20, y: 20)
            .frame(width: 200, height: 100, alignment: .center)
    }
}

#Preview {
    ColorBootCamp()
}
