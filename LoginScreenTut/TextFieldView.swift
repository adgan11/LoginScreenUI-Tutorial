//
//  TextFieldView.swift
//  LoginScreenTut
//
//  Created by Ahmed Gagan on 03/01/23.
//

import SwiftUI

struct TextFieldView: View {
    
    @State var textInput: String = ""
    var fieldPlaceholder: String = "Username"
    var isSecure: Bool
    
    var posX: CGFloat
    var posY: CGFloat
    
    var body: some View {
        if (!isSecure) {
            TextField(fieldPlaceholder, text: $textInput)
                .font(.custom("Inter-Regular", size: 26))
                .offset(x: posX, y: posY)
                .padding()
            Divider()
                .frame(width: 350, height: 1)
                .background(.black)
                .shadow(radius: 4, y: 4)
        } else {
            SecureField(fieldPlaceholder, text: $textInput)
                .font(.custom("Inter-Regular", size: 26))
                .offset(x: posX, y: posY)
                .padding()
            Divider()
                .frame(width: 350, height: 1)
                .background(.black)
                .shadow(radius: 4, y: 4)
        }
        
        
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(textInput: "", fieldPlaceholder: "Username", isSecure: false, posX: 0, posY: 0)
    }
}
