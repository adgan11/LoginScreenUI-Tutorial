//
//  SecondView.swift
//  LoginScreenTut
//
//  Created by Ahmed Gagan on 31/12/22.
//

import SwiftUI

struct SecondView: View {
    
    @State var userName: String = ""
    @State var passWord: String = ""
    
    var circleView = CircleView(positionX: -315, positionY: 200, upperRadius: 500, lowerRadius: 500, color: Color(red: 224/255, green: 255/255, blue: 221/255))
    
    var body: some View {
            VStack {
                Text("Welcome Back!")
                    .font(.custom("Inter-Bold", size: 32))
                    .shadow(radius: 4, y: 4)
                    .offset(x: -37)
                Spacer().frame(height: 10)
                Text("Enter Your Username and Password")
                    .font(.custom("Inter-Regular", size: 18))
                    .foregroundColor(Color(red: 86/255, green: 86/255, blue: 86/255))
                    .bold()
                ZStack {
                    circleView
                    VStack {
                        TextFieldView(textInput: userName, fieldPlaceholder: "Username", isSecure: false, posX: 70, posY: -18)
                        Spacer().frame(height: 70)
                        TextFieldView(textInput: passWord, fieldPlaceholder: "Password", isSecure: true, posX: 70, posY: -18)
                        Spacer().frame(height: 75)
                        Button() {
                            return
                        } label: {
                            Text("LOGIN").font(Font.custom("Inder-Regular", size: 32))
                        }
                        .frame(width: 200, height: 50)
                        .background(.black)
                        .foregroundColor(.white)
                        .cornerRadius(30)
                        .padding()
                        Text("Forgetten Password?")
                            .foregroundColor(Color(red: 107/255, green: 107/255, blue: 107/255))
                        Spacer().frame(height: 8, alignment: .center)
                        NavigationLink(destination: ThirdView()) {
                            Text("Or Create a New Account")
                                .foregroundColor(Color(red: 107/255, green: 107/255, blue: 107/255))
                                .offset(x: 2)
                        }
                    }.offset(y: 50)
                }
            }
        }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
