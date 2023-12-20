//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 18.10.2023.
//

import SwiftUI

struct ContentView: View {
    let storageManager = StorageManager.shared
    
    @StateObject private var timer = TimeCounter()
    @EnvironmentObject private var userManager: UserManager

    var body: some View {
        VStack {
            Text("Hi, \(userManager.name)")
                .font(.largeTitle)
                .padding(.top, 100)
            Text(timer.counter.formatted())
                .font(.largeTitle)
                .padding(.top, 100)
            
            Spacer()
            
            ButtonView(
                action: timer.startTimer,
                title: timer.buttonTitle,
                backgroundColor: .red
            )
            
            Spacer()
            
            ButtonView(
                action: logOut,
                title: "LogOut",
                backgroundColor: .blue
            )
        }
    }
    
    private func logOut() {
        userManager.name = ""
        userManager.isLoggedIn = false
        
        storageManager.delete()
    }
}

#Preview {
    ContentView()
        .environmentObject(UserManager())
}
