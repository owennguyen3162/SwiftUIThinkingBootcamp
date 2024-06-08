//
//  TransitionBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Nguyen Anh Tuan on 8/6/24.
// How to use Transition in SwiftUIw

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var isShowView = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("Press Me") {
                    withAnimation(.default){
                        isShowView.toggle()
                    }
                }
                Spacer()
            }
            
            if isShowView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.width)
//                    .transition(.move(edge: .bottom))
//                    .transition(.scale)
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
                        removal: .scale))
            }
            
        }.edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    TransitionBootcamp()
}
