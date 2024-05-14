//
//  ExtractFunctionsBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Nguyen Anh Tuan on 15/5/24.
//

//Extracting functions and subviews in SwiftUI | Bootcamp #20

import SwiftUI


struct ExtractFunctionsBootcamp: View {
    
    @State var backgroundColor: Color = Color.purple
    
    var body: some View {
        
        ZStack {
            backgroundColor.ignoresSafeArea(.all)
            contentLayer
         
        }
        
    }
    
    var contentLayer: some View {
        Button("PRESS ME"){
            onPressButton()
        }
    }
    
    func onPressButton () {
        backgroundColor = .red
    }
    
    
}

#Preview {
    ExtractFunctionsBootcamp()
}
