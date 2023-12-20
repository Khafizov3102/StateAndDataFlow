//
//  RootView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 18.10.2023.
//

import SwiftUI

struct RootView: View {
//    @StateObject private var userManager = UserManager()
    let storageManager = StorageManager.shared
    
    @StateObject private var userManager = UserManager(
        isLoggedIn: UserDefaults.standard.value(forKey: "isLoginKey") as? Bool ?? false,
        name: UserDefaults.standard.value(forKey: "userKey") as? String ?? ""
    )
    
    var body: some View {
        Group {
            if userManager.isLoggedIn {
                ContentView()
            } else {
                LoginView()
            }
        }
        .environmentObject(userManager)
    }
}

//#Preview {
//    RootView()
//}
