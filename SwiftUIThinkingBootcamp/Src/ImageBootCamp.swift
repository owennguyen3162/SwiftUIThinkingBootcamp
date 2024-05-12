//
//  ImageBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Nguyen Anh Tuan on 28/4/24.
//

import SwiftUI

struct ImageBootCamp: View {
    var body: some View {
        Image("TheRock")
            .resizable()
        //            .aspectRatio(contentMode: .fill)
        //            .scaledToFill()
            .frame(width: 300, height: 200)
        //            .border(.red, width: 1)
        //            .clipped()
        //            .cornerRadius(30.0)
            .clipShape(
                //                Circle()
                //                Rectangle()
                //                RoundedRectangle(cornerRadius: 20)
                Ellipse()
            )
    }
}

#Preview {
    ImageBootCamp()
}
