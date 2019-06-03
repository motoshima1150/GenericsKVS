//
//  ViewController.swift
//  GenericsKVS
//
//  Created by Motonari Nakashima on 2019/06/01.
//  Copyright © 2019 motoshima1150. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let animalUserDefault = GenericsUserDefault<UserDefaultsKeys.Animal>()
        animalUserDefault.set("20", forKey: .cat)
        
        let fruitUserDefault = GenericsUserDefault<UserDefaultsKeys.Fruit>()
        fruitUserDefault.set("test", forKey: .orange)
        
    }


}

