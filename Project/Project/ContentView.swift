//
//  ContentView.swift
//  Project
//
//  Created by Nagaraju Yadav on 21/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView{
                ZStack{
                    Rectangle()
                        .fill(LinearGradient(gradient: Gradient(colors: [
                            Color(red: 0.15, green: 0.53, blue: 0.75) ,// "2587BE"
                            Color(red: 0.91, green: 0.96, blue: 1.0) // "E7F6FF"
                            
                        ]), startPoint: .top, endPoint: .bottom))
                        .frame(height: 250)
                        .overlay(
                            Image("Group 148")
                                .resizable()
                                .scaledToFill()
                        )
                        .padding(.top,-125)
                    VStack{
                        Text("Hey Nishana Nizamudeen!")
                            .font(/*@START_MENU_TOKEN@*/.subheadline/*@END_MENU_TOKEN@*/)
                            .fontWeight(.semibold)
                        Text("Let's learn something new today")
                            .font(.footnote)
                            .fontWeight(.light)
                    }
                    .padding(.leading, -169)
                    .padding(.top, -90)
                    
                    Image(systemName: "bell.circle.fill")
                        .resizable()
                        .frame(width : 30, height: 30)
                        .padding(.leading, 250)
                        .padding(.top, -86)
                    Image("Group 46@2x")
                        .resizable()
                        .frame(width: 358, height: 132)
                        .padding(.top, 80)
                }
                Text("Resume from where you left")
                    .font(.subheadline)
                    .fontWeight(.light)
                    .padding(.trailing, 170)
                    .padding(.top, 18)
                Image("Group 48097258")
                    .resizable()
                    .frame(width: 389, height: 129)
                    .padding(.top, -6)
                Text("Explore Courses")
                    .font(.subheadline)
                    .fontWeight(.light)
                    .padding(.trailing, 245)
                    .padding(.top, -8)
                
                HStack(spacing : -18){
                    NavigationLink(destination: Courses()) {
                        Image("Group 48097214")
                            .resizable()
                            .frame(width: 200, height: 140)
                    }
                    NavigationLink(destination: Courses()) {
                        Image("Group 48097215")
                            .resizable()
                            .frame(width: 200, height: 140)
                    }
                }
                .padding(.top, -10)
                
                HStack(spacing : -12){
                    NavigationLink(destination: Courses()) {
                        Image("Group 48097215-2")
                            .resizable()
                            .frame(width: 200, height: 140)
                    }
                    NavigationLink(destination: Courses()) {
                        Image("Group 48097216")
                            .resizable()
                            .frame(width: 200, height: 140)
                    }
                }
                .padding(.top,-30)
                Text("Featured Courses")
                    .font(.subheadline)
                    .fontWeight(.light)
                    .padding(.trailing, 230)
                    .padding(.top, -8)
                    .padding(.bottom, 5)
                HStack(spacing : 25){
                    Image("Group 48097241")
                        .resizable()
                        .frame(width: 165, height:300)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    Image("Group 48097240")
                        .resizable()
                        .frame(width: 165, height:300)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                
                HStack(spacing : 25){
                    Image("Group 48097240")
                        .resizable()
                        .frame(width: 165, height:300)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    Image("Group 48097241")
                        .resizable()
                        .frame(width: 165, height:300)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                .padding()
            }
            
        }
        RoundedRectangle(cornerRadius: 20)
            .fill(Color .gray)
            .frame(height: 60)
            .padding(.bottom, -35)
            .overlay(
                HStack(spacing: 100){
                    Image(systemName: "house.fill")
                        .resizable()
                        .frame(width: 35, height: 35)
                    Image(systemName: "book.pages.fill")
                        .resizable()
                        .frame(width: 35, height: 35)
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 35, height: 35)

                }
                   .padding(.top,30)
            )
        
    }
}

#Preview {
    ContentView()
}
