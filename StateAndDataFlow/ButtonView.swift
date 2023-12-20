//
//  ButtonView.swift
//  StateAndDataFlow
//
//  Created by Денис Хафизов on 20.12.2023.
//

import SwiftUI

struct ButtonView: View {
    let action: () -> Void
    let title: String
    let backgroundColor: Color
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.white)
        }
        .frame(width: 200, height: 60)
        .background(backgroundColor)
        .clipShape(.rect(cornerRadius: 20))
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.black, lineWidth: 4)
        )
    }
}

//#Preview {
//    ButtonView()
//}
