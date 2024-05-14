//
//  SafeAreaBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Nguyen Anh Tuan on 12/5/24.
//

//How to use and ignore the Safe Area in SwiftUI

import SwiftUI

struct SafeAreaBootCamp: View {
    var body: some View {
        //        ZStack {
        //            //background
        //            Color.blue
        //                .edgesIgnoringSafeArea(.all)
        //
        //            VStack {
        //                Text("Hello, World!")
        //                Spacer()
        //
        //            }
        //
        //            .frame(maxWidth: .infinity, maxHeight: .infinity)
        //            .background(.red)
        //        }
        
        ScrollView {
            VStack {
                Text("Title goes here")
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ForEach(0..<10) { index in
                    
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.white)
                        .frame(height: 100)
                        .shadow(radius: 10)
                        .padding()
                    
                }
            }
        }
        .background(.purple)
//        .ignoresSafeArea()
    }
}

#Preview {
    SafeAreaBootCamp()
}
