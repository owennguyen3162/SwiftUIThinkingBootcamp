//
//  BackgroundsAndOverlaysBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Nguyen Anh Tuan on 28/4/24.
//

import SwiftUI

struct BackgroundsAndOverlaysBootCamp: View {
    var body: some View {
        //        Circle().fill(.red)
        //            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        //            .overlay(
        //                Text("1"),
        //                alignment: Alignment.center
        //            )
        //            .font(.largeTitle)
        //            .background(
        //                Circle().fill(.purple)
        //                    .frame(width: 120, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/))
        
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.white)
            .background(
                Circle().fill(LinearGradient(colors: [.purple, .blue], startPoint: .leading, endPoint: .trailing))
                    .frame(width: 100, height: 100)
                    .shadow(color: .black, radius: 10, x: 10, y: 10)
                    .overlay(
                        Circle()
                            .fill(.blue)
                            .frame(width: 35, height: 35)
                            .overlay(
                                Text("5").foregroundColor(.white)
                                    .font(.system(size: 15))
                            )
                            .shadow(color: .black, radius: 10, x: 10, y: 10)
                        , alignment: .bottomTrailing
                    )
            )
    }
}

#Preview {
    BackgroundsAndOverlaysBootCamp()
}
