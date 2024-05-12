//
//  ForEachBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Nguyen Anh Tuan on 12/5/24.
//

//How to use ForEach loops in SwiftUI | Bootcamp #14

import SwiftUI

struct ForEachBootCamp: View {
    
    let data: [String] = ["hi", "hello", "hey everyone"]
    let myString: String = "Hello"
    
    var body: some View {
        
        //        VStack (spacing: 10 ){
        //            ForEach(0..<10) { index in
        //                HStack {
        //                    Circle().frame(width: 30, height: 30)
        //                    Text("Hi \(index)")
        //                }
        //            }
        //        }
        
        //MARK: 1
        
        // indices: là 1 thuộc tính trong collection swift, nó cho phép mình truy cập vào chỉ số của từng item có trong collection đó
        
        VStack {
            ForEach(data.indices) { index in
                Text("\(data[index]): \(index)")
            }
        }
        
        
    }
}

#Preview {
    ForEachBootCamp()
}
