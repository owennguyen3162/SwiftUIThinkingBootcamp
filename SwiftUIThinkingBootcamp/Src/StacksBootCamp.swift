//
//  StacksBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Nguyen Anh Tuan on 11/5/24.
//

import SwiftUI

struct StacksBootCamp: View {
    //ZStack: -> Z index (back to font)
    var body: some View {
        //        ZStack(alignment: .center, content: {
        //            Rectangle().fill(.red).frame(width: 130, height: 130)
        //            Rectangle().fill(.green).frame(width: 120, height: 120)
        //            Rectangle().fill(.blue).frame(width: 100, height: 100)
        //        })
        
        HStack(alignment: .center,spacing: 10 ,content: {
            Rectangle().fill(.red).frame(width: 130, height: 130)
            Rectangle().fill(.green).frame(width: 120, height: 120)
            Rectangle().fill(.blue).frame(width: 100, height: 100)
        })
        
        HStack(alignment: .bottom,spacing: 10 ,content: {
            Rectangle().fill(.red).frame(width: 130, height: 130)
            Rectangle().fill(.green).frame(width: 120, height: 120)
            Rectangle().fill(.blue).frame(width: 100, height: 100)
        })
        
    }
}

#Preview {
    StacksBootCamp()
}
