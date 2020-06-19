//
//  PropertyWrapper.swift
//  
//
//  Created by Nathan General on 19/6/20.
//

import Foundation

@propertyWrapper
public struct UserDefault<T: UserDefaultCompatible> {
    let key: String
    let defaultValue: T
    
    var wrappedValue: T {
        get {
            UserDefaults.standard.object(forKey: key) as? T ?? defaultValue
        }
        set {
            UserDefaults.standard.set(newValue, forKey: key)
        }
    }
}
