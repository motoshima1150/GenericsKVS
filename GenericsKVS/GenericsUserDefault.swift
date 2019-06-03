//
//  GenericsUserDefault.swift
//  GenericsKVS
//
//  Created by Motonari Nakashima on 2019/06/01.
//  Copyright © 2019 motoshima1150. All rights reserved.
//

import Foundation

typealias Identifier = String

enum Domain: String {
    case animal
    case fruit
}

protocol UserDefaultsKeyProtocol {
    static var domain: Domain { get }
    var id: Identifier { get }
    var key: String { get }
}

extension UserDefaultsKeyProtocol {
    var key: String { return Self.domain.rawValue + "." + id }
}

final class GenericsUserDefault<T: UserDefaultsKeyProtocol> {
    
    private let userDefaults: UserDefaults
    
    init(_ userDefaults: UserDefaults = .standard) {
        self.userDefaults = userDefaults
    }
    
    func set(_ value: Any?, forKey identifier: T) {
        userDefaults.set(value, forKey: identifier.key)
    }
    
    func string(forKey identifier: T) -> String? {
        return userDefaults.string(forKey: identifier.key)
    }
    
}
