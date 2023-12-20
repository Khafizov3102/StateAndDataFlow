//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 18.10.2023.
//

import Foundation

final class UserManager: ObservableObject {
    @Published var isLoggedIn: Bool
    var name: String
    
    init(isLoggedIn: Bool = false, name: String = "") {
        self.isLoggedIn = isLoggedIn
        self.name = name
    }
}
