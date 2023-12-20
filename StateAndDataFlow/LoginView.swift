//
//  LoginView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 18.10.2023.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject private var userManager: UserManager
    @State private var name = ""
    
    var body: some View {
        HStack {
            VStack {
                TextField("Enter your name", text: $name)
                    .multilineTextAlignment(.center)
                
                Button(action: login) {
                    Label("OK", systemImage: "checkmark.circle")
                }
                .disabled(name.count > 2 ? false : true)
            }
            Spacer()
            Text(name.count.formatted())
                .foregroundStyle(name.count > 2 ? .green : .red)
                .padding(.trailing, 16)
        }
    }
    
    private func login() {
        if !name.isEmpty {
            userManager.name = name
            userManager.isLoggedIn.toggle()
        }
    }
}

//#Preview {
//    LoginView()
//}
