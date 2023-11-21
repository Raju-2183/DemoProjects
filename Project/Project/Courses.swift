//
//  Courses.swift
//  Project
//
//  Created by Nagaraju Yadav on 21/11/23.
//

import SwiftUI

struct Courses: View {
    @ObservedObject var networkManager = NetworkManager()
    @State private var searchText = ""

    var filteredPosts: [Branch] {
          if searchText.isEmpty {
              return networkManager.posts
          } else {
              return networkManager.posts.filter { branch in
                  branch.name.localizedCaseInsensitiveContains(searchText) || branch.short.localizedCaseInsensitiveContains(searchText)
              }
          }
      }
    
    var body: some View {
        ZStack{
            Rectangle()
                .frame(height: 280)
                .overlay(
                    Image("Frame 8")
                        .resizable()
                        .scaledToFill()
                )
                .padding(.top, -442)
            
            VStack{
                Text("All your branches")
                    .font(/*@START_MENU_TOKEN@*/.subheadline/*@END_MENU_TOKEN@*/)
                    .fontWeight(.semibold)
                Text("Find your branch")
                    .font(.footnote)
                    .fontWeight(.light)
            }
            .padding(.leading, -169)
            .padding(.top, -340)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color .white)
                .frame(width : 355, height: 40)
                .overlay(
                    HStack(spacing: -8){
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .padding(.leading, 20)
                        SearchBar(text: $searchText)
                      
                    }
               )
                .padding(.top, -270)
       
                ScrollView{
                    LazyVGrid(columns: [GridItem(.flexible(), spacing: 16), GridItem(.flexible(), spacing: 16)], spacing: 16) {
                        ForEach(filteredPosts) { branch in
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 165, height: 105)
                                .foregroundColor(Color.gray)
                                .overlay(
                                    VStack(spacing : 10){
                                        Text(branch.short)
                                            .fontWeight(.bold)
                                        Text(branch.name)
                                            .font(.footnote)
                                            .fontWeight(.thin)
                                        
                                    }
                                )
                        }
                    }
                    .onAppear{
                        self.networkManager.fetchData()
                    }
                    
                }.padding(.top,150)
            }
            
            
        }
 
}

#Preview {
    Courses()
}
