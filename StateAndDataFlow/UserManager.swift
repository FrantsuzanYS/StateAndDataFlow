//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by brubru on 13.09.2021.
//
import Foundation
import Combine

class UserManager: ObservableObject {
    @Published private(set) var isRegister = UserDefaults.standard.bool(
        forKey: keys.isRegister.rawValue)
    @Published private(set) var userName = UserDefaults.standard.string(
        forKey: keys.userName.rawValue)
    
    var name = ""
    
    private let userDefault = UserDefaults.standard
    
    private enum keys: String {
        case isRegister
        case userName
    }
    
    func setUser(name: String) {
        userDefault.set(name, forKey: keys.userName.rawValue)
        userDefault.set(true, forKey: keys.isRegister.rawValue)
        self.userName = name
        self.isRegister = true
    }
    
    func removeUser() {
        userDefault.removeObject(forKey: keys.userName.rawValue)
        userDefault.removeObject(forKey: keys.isRegister.rawValue)
        self.userName = ""
        self.isRegister = false
    }
}
