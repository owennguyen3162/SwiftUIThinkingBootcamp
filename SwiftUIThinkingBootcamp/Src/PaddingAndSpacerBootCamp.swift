//
//  PaddingAndSpacerBootCapm.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Nguyen Anh Tuan on 11/5/24.
//

import SwiftUI

struct PaddingAndSpacerBootCamp: View {
    var body: some View {
        //        Text("Hello, World! this is fun")
        //            .background(.yellow)
        //        //            .padding()
        //        //            .padding(.horizontal, 20)
        //        //            .padding(.bottom, 20)
        //            .padding(10)
        //            .background(.blue)
        
        //        Text("Hello world !")
        //            .padding(10)
        //            .font(.largeTitle)
        //            .fontWeight(.bold)
        //            .frame(maxWidth: .infinity, alignment: .leading)
        //            .background(.red)
        //            .padding(.leading, 20)
        
        VStack(alignment: .leading) {
            Text("Hello world !")
                .fontWeight(.bold)
                .font(.largeTitle)
                .padding(.bottom, 20)
            
            Text("Hello world ! Hello world ! Hello world ! Hello world ! Hello world ! Hello world !")
            
        }
        .padding(20)
        .padding(.vertical, 30)
            .background(
                Color.white
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0.0, y: 0.0)
            )
            .padding(.horizontal, 20)
        
    }
}

#Preview {
    PaddingAndSpacerBootCamp()
}
