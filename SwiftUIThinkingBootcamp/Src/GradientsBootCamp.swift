//
//  GradientsBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Nguyen Anh Tuan on 28/4/24.
//

import SwiftUI

struct GradientsBootCamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(
                //            LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
                
                //                RadialGradient(
                //                    colors: [.myCustom, .blue],
                //                    center: .topLeading,
                //                    startRadius: 5,
                //                    endRadius: 300)
                
                AngularGradient(
                    gradient: Gradient(colors: [Color.red, Color.blue]),
                    center: .center,
                    angle: .degrees(45))
            )
        
            .frame(width: 300, height: 200, alignment: .center)
    }
}

#Preview {
    GradientsBootCamp()
}
