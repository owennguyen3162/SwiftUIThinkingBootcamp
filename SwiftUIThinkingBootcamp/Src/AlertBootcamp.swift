//
//  AlertBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Nguyen Anh Tuan on 8/6/24.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var backgroundColorApp = Color.purple
    @State var isShowAlert = false
    @State var alretType: alertEnumType? = nil
//    @State var title: String = ""
//    @State var message: String = ""
    
    enum alertEnumType {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            backgroundColorApp.ignoresSafeArea(.all)
            VStack {
                Button("Show Alert 1"){
//                    title = "this is title 1"
//                    message = "this is message 1"
                    alretType = .error
                    isShowAlert.toggle()
                }
                Button("Show Alert 2"){
//                    title = "this is title 2"
//                    message = "this is message 2"
                    alretType = .success
                    isShowAlert.toggle()
                }
            }
            .alert(isPresented: $isShowAlert, content: getAlert)
        }
    }
    
    private func getAlert () -> Alert{
//        return Alert(
//            title: Text(title),
//            message: Text(message),
//            primaryButton: .destructive(Text("Delete"), action: {
//            backgroundColorApp = .red
//        }), secondaryButton: .cancel())
        
        switch alretType {
        case .error:
            return Alert(title: Text("Error"))
        case .success:
            return Alert(title: Text("Error"), dismissButton: .default(Text("Dissmis"), action: {
                backgroundColorApp = .green
            }))
        default:
            return Alert(title: Text("Error"))
        }
    }
}

#Preview {
    AlertBootcamp()
}
