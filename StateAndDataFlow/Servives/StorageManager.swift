//
//  SorageManager.swift
//  StateAndDataFlow
//
//  Created by Денис Хафизов on 21.12.2023.
//

import Foundation

final class StorageManager {
    static let shared = StorageManager()
    
    private let userDefauls = UserDefaults.standard
    private let userNameKey = "userKey"
    private let isLoginKey = "isLoginKey"
    
    private init() {}
    
    func save(user: String, isLogin: Bool) {
        userDefauls.set(user, forKey: userNameKey)
        userDefauls.set(isLogin, forKey: isLoginKey)
    }
    
    func delete() {
        userDefauls.set("", forKey: userNameKey)
        userDefauls.set(false, forKey: isLoginKey)
    }
}
