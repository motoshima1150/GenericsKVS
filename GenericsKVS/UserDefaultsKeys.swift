//
//  UserDefaultsKeys.swift
//  GenericsKVS
//
//  Created by Motonari Nakashima on 2019/06/04.
//  Copyright © 2019 motoshima1150. All rights reserved.
//

import Foundation

struct UserDefaultsKeys {
    enum Animal: Identifier, UserDefaultsKeyProtocol {
        static let domain: Domain = .animal
        var id: Identifier { return self.rawValue }
        
        case cat
        case dog
        case rabbit
    }
    
    enum Fruit: Identifier, UserDefaultsKeyProtocol {
        static let domain: Domain = .fruit
        var id: Identifier { return self.rawValue }
        
        case apple
        case orange
        case grape
    }
}
