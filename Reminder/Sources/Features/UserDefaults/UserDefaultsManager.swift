//
//  UserDefaultsManager.swift
//  Reminder
//
//  Created by Wagner Sobreira on 9/19/25.
//

import Foundation
class UserDefaultsManager {
    private static let userKey = "userKey"
    
    static func saveUser(user: User) {
         let encoder = JSONEncoder()
         if let encoded = try? encoder.encode(user) {
             UserDefaults.standard.set(encoded, forKey: userKey)
             UserDefaults.standard.synchronize()
        }
        
    }
    
    static func loadUser() -> User? {
        if let UserData = UserDefaults.standard.data(forKey: userKey){
            let decoder = JSONDecoder()
            if let user = try? decoder.decode(User.self,from:UserData){
                return user
            }
        }
        return nil
    }
}
