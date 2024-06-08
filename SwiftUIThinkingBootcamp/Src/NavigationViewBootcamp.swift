//
//  NavigationViewBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Nguyen Anh Tuan on 8/6/24.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("Go to screen 2", destination: NewScreen2()
                )
            }
            .navigationTitle("Screen 1")
            .navigationBarTitleDisplayMode(.large)
//            .navigationBarHidden(false)
            .navigationBarItems(
                leading: Image(systemName: "person.fill"),
                trailing: NavigationLink(destination: NewScreen2(), label: {
                    Image(systemName: "gear")
                }).foregroundStyle(.red)
            )
        }
        
    }
}

struct NewScreen2: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Text("This is screen 2")
                .navigationTitle("Screen 2")
                .navigationBarBackButtonHidden()
            
            NavigationLink("go to screen 3", destination: NewScreen3())
            
            Button("Go Back"){
                presentationMode.wrappedValue.dismiss()
            }
            
        }
      
        
    }
}


struct NewScreen3: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Text("This is screen 3")
            .navigationTitle("Screen 3")
            .navigationBarBackButtonHidden()
        
        Button("Go Back"){
            presentationMode.wrappedValue.dismiss()
        }
        
    }
}


#Preview {
    NavigationViewBootcamp()
}
