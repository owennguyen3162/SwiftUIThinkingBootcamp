//
//  AnimationBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Nguyen Anh Tuan on 8/6/24.
//

import SwiftUI

struct AnimationBootcamp: View {
    @State var isAnimation = false
    
    var body: some View {
        Button("Press me"){
                isAnimation.toggle()
        }
        
        Spacer()
    
        RoundedRectangle(cornerRadius: isAnimation ? 50 : 25.0)
            .fill(isAnimation ? .green : .red)
            .frame(width: isAnimation ? 100 : 300,
                   height: isAnimation ? 100: 300)
            .rotationEffect(Angle(degrees: isAnimation ? 360 : 0))
            .offset(y: isAnimation ? 300 : 0)
            .animation(.default.repeatForever(autoreverses: true), value: isAnimation)
        
        Spacer()
    }
}

#Preview {
    AnimationBootcamp()
}
