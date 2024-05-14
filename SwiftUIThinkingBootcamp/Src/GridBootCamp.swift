//
//  GridBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Nguyen Anh Tuan on 12/5/24.
//

import SwiftUI

struct GridBootCamp: View {
    
    //    let columns: [GridItem] = [
    //        GridItem(.fixed(50), spacing: nil, alignment: nil),
    //        GridItem(.fixed(75), spacing: nil, alignment: nil),
    //        GridItem(.fixed(100), spacing: nil, alignment: nil),
    //        GridItem(.fixed(75), spacing: nil, alignment: nil),
    //        GridItem(.fixed(50), spacing: nil, alignment: nil),
    //    ]
    
    //    let columns: [GridItem] = [
    //        GridItem(.flexible(), spacing: nil, alignment: nil),
    //        GridItem(.flexible(), spacing: nil, alignment: nil),
    //        GridItem(.flexible(), spacing: nil, alignment: nil),
    //        GridItem(.flexible(), spacing: nil, alignment: nil),
    //        GridItem(.flexible(), spacing: nil, alignment: nil),
    //    ]
    
    //    let columns: [GridItem] = [
    //        GridItem(.adaptive(minimum: 50, maximum: 300), spacing: nil, alignment: nil),
    //        GridItem(.adaptive(minimum: 150, maximum: 300), spacing: nil, alignment: nil),
    //    ]
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
    ]
    
    
    
    var body: some View {
        ScrollView {
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 10,
                pinnedViews: [.sectionHeaders],
                content: {
                    ForEach(0..<20) { index in
                        Section(header:
                                    Text("Section: \(index)")
                            .foregroundColor(.white)
                            .font(.title)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 10)
                            .background(.blue)
                            .padding(.horizontal,10)
                        )
                        {
                            ForEach(0..<9) { index in
                                Rectangle()
                                    .frame(height: 150)
                            }
                        }
                    }
                })
        }
    }
}

#Preview {
    GridBootCamp()
}
