//
//  PopoverBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Nguyen Anh Tuan on 8/6/24.
//

import SwiftUI

struct PopoverBootcamp: View {
    
    @State var isShowPopup = false
    
    var body: some View {
        ZStack(alignment: .top) {
            Color.purple.ignoresSafeArea(.all)
            Button(action: {
//                withAnimation(.default){
                    isShowPopup = true
//                }
            }, label: {
                Text("Show Popup")
                    .font(.title)
                    .foregroundStyle(.white)
            })
            
            //MARK: Sheet
//            .sheet(isPresented: $isShowPopup, content: {
//                NewScreen()
//            })
            
            //MARK: Transition
            
//            ZStack {
//                if isShowPopup {
//                    NewScreen(isShowPopup: $isShowPopup)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring)
//                }
//            }
//            .zIndex(1)
            
            //MARK: Animation Offset
            
            NewScreen(isShowPopup: $isShowPopup)
                                   .padding(.top, 100)
                                   .offset(y: !isShowPopup ? UIScreen.main.bounds.height : 0)
                                   .animation(.spring)
            
        }
    }
}

struct NewScreen: View {
    
//    @Environment(\.presentationMode) var presentationMode
    
    @Binding var isShowPopup: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.green.ignoresSafeArea(.all)
            Button(action: {
//                presentationMode.wrappedValue.dismiss()
                isShowPopup.toggle()
            }, label: {
                Image(systemName: "xmark")
                    .font(.title)
                    .foregroundStyle(.white)
                    .padding(20)
            })
        }
    }
}
#Preview {
    PopoverBootcamp()
}
