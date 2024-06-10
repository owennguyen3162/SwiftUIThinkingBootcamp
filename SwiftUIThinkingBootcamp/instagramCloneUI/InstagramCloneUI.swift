//
//  InstagramCloneUI.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Nguyen Anh Tuan on 9/6/24.
//

import SwiftUI

struct InstagramCloneUI: View {
    @State var backgroundColorApp: Color = .black
    @State var arrayStory: [StoryItem] = [StoryItem(name: "Nguyen tuan", id: 1), StoryItem(name: "Nguyen tuan 2", id: 2), StoryItem(name: "Nguyen tuan 3", id: 3),  StoryItem(name: "Nguyen tuan 4", id: 77), StoryItem(name: "Nguyen tuan 4", id: 5), StoryItem(name: "Nguyen tuan 4", id: 11), StoryItem(name: "Nguyen tuan 4", id: 6), StoryItem(name: "Nguyen tuan 4", id: 4), StoryItem(name: "Nguyen tuan 4", id: 7), StoryItem(name: "Nguyen tuan 4", id: 8), StoryItem(name: "Nguyen tuan 4", id: 16), StoryItem(name: "Nguyen tuan 4", id: 9), StoryItem(name: "Nguyen tuan 4", id: 10)]
    
    var body: some View {
        ZStack {
            backgroundColorApp.ignoresSafeArea()
            VStack {
                ScrollView {
                    headerApp
                    bodyConten
                }
                // Content goes here
                Spacer()
                
                // Custom tab bar
                HStack {
                    Spacer()
                    Button(action: {}) {
                        Image(systemName: "house.fill")
                            .padding()
                    }
                    Spacer()
                    Button(action: {}) {
                        Image(systemName: "house.fill")
                            .padding()
                    }
                    Spacer()
                    Button(action: {}) {
                        Image(systemName: "house.fill")
                            .padding()
                    }
                    Spacer()
                    Button(action: {}) {
                        Image(systemName: "house.fill")
                            .padding()
                    }
                    Spacer()
                }
                
                .background(Color.red)
                
                
            }
        }
    }
    
    var headerApp: some View {
        VStack {
            HStack {
                Text("Instagram")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                
                Spacer()
                
                Image(systemName: "heart")
                    .font(.title3)
                    .foregroundStyle(.white)
                    .padding(.trailing, 10)
                
                Image(systemName: "message")
                    .font(.title3)
                    .foregroundStyle(.white)
            }
            
            ScrollView(.horizontal) {
                LazyHStack {
                    ForEach(arrayStory, id: \.id) { item in
                        LazyVStack {
                            ItemViewStory(item: item)
                        }.frame(width: 100)
                    }
                }.padding(.top, 10)
            }
        }
        .padding(.horizontal, 20)
    }
    
    var bodyConten: some View {
        LazyVStack {
            ForEach(0..<100){ data in
                ItemViewPosts()
            }
        }
    }
    
    
}

struct ItemViewStory: View {
    let item: StoryItem
    var body: some View {
        Image("sonTung")
            .resizable()
            .scaledToFill()
            .frame(width: 80, height: 80)
            .cornerRadius(100)
            .overlay(
                ZStack{
                    if item.id != 1 {
                        Circle()
                            .stroke(
                                LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                ,lineWidth: 4)
                            .padding(-5)
                    } else{
                        Circle()
                            .stroke(.black, lineWidth: 6)
                            .frame(width: 27, height: 27)
                            .background(.blue)
                            .cornerRadius(30)
                            .overlay(){ Image(systemName: "plus")
                                    .foregroundStyle(.white)
                                    .font(.headline)
                            }
                    }
                }, alignment: item.id != 1 ? .center : .bottomTrailing
            )
        Text("\(item.name)")
            .foregroundStyle(.white)
            .font(.caption2)
            .padding(.top, 10)
    }
}

struct ItemViewPosts: View {
    var body: some View {
        VStack {
            Divider()
                .background(.gray)
            HStack {
                Image("sonTung")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .cornerRadius(100)
                Text("isaacion")
                    .font(.headline)
                    .foregroundStyle(.white)
                Spacer()
                Image(systemName: "ellipsis")
                    .foregroundStyle(.white)
            }
            .padding(.horizontal, 10)
            .padding(.vertical, 5)
            
            Image("imagesPots")
                .resizable()
                .aspectRatio(1, contentMode: .fit)
            
            HStack {
                Image(systemName: "heart")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25, height: 25)
                    .foregroundStyle(.white)
                    .padding(.trailing, 10)
                
                Image(systemName: "message")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25, height: 25)
                    .foregroundStyle(.white)
                    .padding(.trailing, 10)
                
                Image(systemName: "paperplane")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25, height: 25)
                    .foregroundStyle(.white)
                
                Spacer()
                
                Image(systemName: "bookmark")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 15, height: 20)
                    .foregroundStyle(.white)
                
                
            }
            .padding(.horizontal, 10)
            .padding(.vertical, 5)
            
            Text("16.880 likes")
                .font(.headline)
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
            
            Text("isaaclion Mỗi ngày một anh, đủ 30 ngày ;)) Trẻ con mới chọn, người lớn lấy hết! Đúng không cả nhà... more")
                .font(.headline)
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
            
            Text("View all 45 comments")
                .font(.headline)
                .foregroundStyle(.gray)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
            
            HStack {
                Text("2 days ago")
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                
                Text("• See translation")
                    .font(.subheadline)
                    .foregroundStyle(.white)
            }.frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
            
            
        }
        .padding(.top, 10)
    }
}

#Preview {
    InstagramCloneUI()
}
