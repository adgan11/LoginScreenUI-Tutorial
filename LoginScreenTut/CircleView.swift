//
//  CircleView.swift
//  LoginScreenTut
//
//  Created by Ahmed Gagan on 31/12/22.
//

import SwiftUI

struct CircleView: View {
    
    var positionX : CGFloat
    var positionY : CGFloat
    var upperRadius: CGFloat
    var lowerRadius: CGFloat
    var color: Color
    
    var body: some View {
        Group {
            Circle()
                .frame(width: upperRadius)
                .foregroundColor(color)
                .offset(x: 90, y: -180)
        }.offset(x: positionX, y: positionY)
            .compositingGroup()
        Group {
            Circle()
                .frame(width: lowerRadius)
                .foregroundColor(color)
                .offset(x: 260, y: 100)
        }.offset(x: positionX, y: positionY)
            .compositingGroup()
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(positionX: 0.0, positionY: 0.0, upperRadius: 500, lowerRadius: 500, color: Color(red: 231/255, green: 240/255, blue: 255/255))
    }
}
