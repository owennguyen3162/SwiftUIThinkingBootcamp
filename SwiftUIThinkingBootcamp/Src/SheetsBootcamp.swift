//
//  SheetsBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Nguyen Anh Tuan on 8/6/24.
//  Display pop-up Sheets and FullScreenCovers in SwiftUI

import SwiftUI

struct SheetsBootcamp: View {
    @State var showSheet = false
    
    var body: some View {
        ZStack {
            Color.red.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            Button(action: {
                
                showSheet.toggle()
                
            }, label: {
                Text("Button")
                    .foregroundStyle(.purple)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white)
                    .cornerRadius(10)
                
            })
//            .fullScreenCover(isPresented: $showSheet, content: {
//                contentSheets()})
            .sheet(isPresented: $showSheet, content: {
                contentSheets()
//                {
//                    showSheet.toggle()
//                }
            })
        }
    }
}

struct contentSheets: View {
        
//    var closesure: (() -> ())
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.green.edgesIgnoringSafeArea(.all)
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
//                closesure()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.title3)
                    .padding(.top, 20)
                    .padding(.leading, 20)
            })
        }
    }
}
#Preview {
    SheetsBootcamp()
//    contentSheets()
}
