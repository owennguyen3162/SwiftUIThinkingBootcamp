//
//  SpacerBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Nguyen Anh Tuan on 12/5/24.
//

import SwiftUI

struct SpacerBootCamp: View {
    var body: some View {
        //        HStack(spacing: nil) {
        //            Rectangle().fill(.gray)
        //                .frame(width: 100, height: 100, alignment: .center)
        //
        //            Spacer()
        //                .frame(height: 10)
        //                .background(.green)
        //
        //            Rectangle().fill(.blue)
        //                .frame(width: 100, height: 100, alignment: .center)
        //        }.background(.red)
        
        //MARK: 0
        
        //        HStack {
        //            Spacer().frame(height: 10).background(.gray)
        //
        //            Rectangle().fill(.red).frame(width: 100, height: 100)
        //
        //            Rectangle().fill(.green).frame(width: 100, height: 100)
        //
        //        }.background(.blue)
        
        //MARK: 1
        
        //        HStack(spacing: 0) {
        //            
        //            Spacer()
        //                .frame(height: 10)
        //                .background(.orange)
        //            
        //            Rectangle()
        //                .fill(.black)
        //                .frame(width: 50, height: 50)
        //            
        //            Spacer()
        //                .frame(height: 10)
        //                .background(.orange)
        //            
        //            Rectangle()
        //                .fill(.red)
        //                .frame(width: 50, height: 50)
        //            
        //            Spacer()
        //                .frame(height: 10)
        //                .background(.orange)
        //            
        //            Rectangle()
        //                .fill(.green)
        //                .frame(width: 50, height: 50)
        //            
        //            Spacer()
        //                .frame(height: 10)
        //                .background(.orange)
        //            
        //        }
        //        .background(.yellow)
        ////        .padding(.horizontal,100)
        //        .background(.blue)
        
        //MARK: 2
        
        //        VStack {
        //            HStack(spacing: 0) {
        //                
        //                Image(systemName: "xmark")
        //                
        //                Spacer()
        //                    .frame(height: 10)
        //                    .background(.orange)
        //                
        //                Image(systemName: "gear")
        //            }
        //            .font(.title)
        //            .padding(.horizontal)
        //            
        //            Spacer()
        //                .frame(width: 10)
        //                .background(.orange)
        //        }
        //        .background(.yellow)
        
        
        //MARK: 3
        
        VStack {
            HStack(spacing: 0) {
                
                Image(systemName: "xmark")
                
                Spacer()
                    .frame(height: 10)
                
                Image(systemName: "gear")
            }
            .font(.title)
            .padding(.horizontal)
            
            Spacer()
                .frame(width: 10)
            
            Rectangle()
                .frame(height: 50)
        }
        
        
        
    }
}

#Preview {
    SpacerBootCamp()
}
