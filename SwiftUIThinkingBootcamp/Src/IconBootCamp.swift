//
//  ImageBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Nguyen Anh Tuan on 28/4/24.
//

import SwiftUI

struct IconBootCamp: View {
    var body: some View {
        Image(systemName: "square.grid.3x1.folder.fill.badge.plus")
            .renderingMode(.original)
            .font(.largeTitle)
        //            .resizable()
        //            .font(.largeTitle)
        //            .font(.system(size: 3))
        //            .aspectRatio(contentMode: .fit)
        //            .scaledToFit()
        //            .foregroundColor(.red)
        //            .frame(width: 300, height: 300, alignment: .center)
        //            .border(Color.green, width: 1)
        //            .clipped() use when used scaledToFill
        
    }
}

#Preview {
    IconBootCamp()
}
