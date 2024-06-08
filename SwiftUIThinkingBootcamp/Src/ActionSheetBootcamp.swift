//
//  ActionSheetBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Nguyen Anh Tuan on 9/6/24.
// How to make a reusable ActionSheet in SwiftUI

import SwiftUI

struct ActionSheetBootcamp: View {
    @State var isShowActionSheet = false
    
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@ username")
                Spacer()
                Button(action: {
                    isShowActionSheet.toggle()
                }, label: {
                    Image(systemName: "ellipsis")
                })
                .tint(.black)
            }
            .padding(.horizontal, 15)
            RoundedRectangle(cornerRadius: 10)
                .frame(width: .infinity, height: 300)
        }
        .actionSheet(isPresented: $isShowActionSheet, content: {
            getActionSheet()
        })
        .padding(.horizontal, 20)
    }
    
    private func getActionSheet() -> ActionSheet {
        
        let button1: ActionSheet.Button = .default(Text("Default"))
        let button2: ActionSheet.Button = .destructive(Text("Reports"))
        let buttonCancel: ActionSheet.Button = .cancel()
        
        return ActionSheet(title: Text("reports post"), message: Text("Do you want report pots ?"), buttons: [button1,button2, buttonCancel])
    }
}

#Preview {
    ActionSheetBootcamp()
}
