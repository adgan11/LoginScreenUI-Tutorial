//
//  ThirdView.swift
//  LoginScreenTut
//
//  Created by Ahmed Gagan on 02/01/23.
//

import SwiftUI

struct ThirdView: View {
    
    var circleView = Image("page3img1")
    @State var emailInput : String = ""
    @State var newUsernameInput : String = ""
    @State var newPasswordInput : String = ""
    
    
    var body: some View {
        VStack {
            ZStack {
                circleView
                VStack {
                    Text("Create\nAccount :)").font(.custom("Inter-Bold", size: 32))
                        .frame(maxWidth: 350, alignment: .leading)
                    Spacer().frame(height: 70)
                    TextFieldView(textInput: emailInput, fieldPlaceholder: "Enter Email Id", isSecure: false, posX: 23, posY: -18)
                    Spacer().frame(height: 50)
                    TextFieldView(textInput: newUsernameInput, fieldPlaceholder: "Create Username", isSecure: false, posX: 23, posY: -18)
                    Spacer().frame(height: 50)
                    TextFieldView(textInput: newPasswordInput, fieldPlaceholder: "Create Password", isSecure: true, posX: 23, posY: -18)
                    Spacer().frame(height: 120)
                    Button() {
                        print("Sign Up")
                    } label: {
                        Text("Sign Up").font(Font.custom("Inder-Regular", size: 32))
                    }
                    .frame(width: 200, height: 50)
                    .background(.black)
                    .foregroundColor(.white)
                    .cornerRadius(30)
                    .padding()
                }
            }
        }
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
