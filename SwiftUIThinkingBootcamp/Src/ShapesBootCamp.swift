//
//  ShapesBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Nguyen Anh Tuan on 27/4/24.
//

import SwiftUI

struct ShapesBootCamp: View {
    var body: some View {
        //        Circle()
        //        Ellipse()
        //        Capsule(style: .continuous)
        //        Rectangle()
        RoundedRectangle(cornerRadius: 20)
        //            .fill(.blue)
        //            .foregroundColor(.yellow)
        //            .stroke(.red)
        //            .stroke(.green, lineWidth: 32.0)
        //            .strokeBorder(.green, style: StrokeStyle(lineWidth: 30, lineCap: .square,  dash: [50]))
        //            .trim(from: 0.5, to: 1.0)
            .frame(width: 200, height: 100, alignment: .center)
        
    }
}

#Preview {
    ShapesBootCamp()
}
