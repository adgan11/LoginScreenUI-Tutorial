//
//  ContentView.swift
//  LoginScreenTut
//
//  Created by Ahmed Gagan on 31/12/22.
//

import SwiftUI

struct ContentView: View {
    
    var circleView = CircleView(positionX: 0, positionY: 0, upperRadius: 500, lowerRadius: 500, color: Color(red: 231/255, green: 240/255, blue: 255/255))
    @State var isJoin = false
    
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    circleView
                    Image("page1img1")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .offset(x: 80, y: 50)
                    Image("page1img2")
                        .offset(x: 100, y: -80)
                }
                VStack(spacing: 15) {
                    Text("Let's Get Started")
                        .font(.custom("Inter-ExtraBold", size: 75))
                        .multilineTextAlignment(.leading)
                    Text("Grow Together").font(Font.custom("Inter-Medium", size: 20))
                        .offset(x: -90)
                        .multilineTextAlignment(.leading)
                    NavigationLink(destination: SecondView(), isActive: $isJoin) {
                        EmptyView()
                    }
                    Button() {
                        isJoin = true
                    } label: {
                        Text("JOIN NOW").font(Font.custom("Inder-Regular", size: 32))
                    }
                    .frame(width: 250, height: 50)
                    .background(.black)
                    .foregroundColor(.white)
                    .cornerRadius(30)
                    .padding()
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
