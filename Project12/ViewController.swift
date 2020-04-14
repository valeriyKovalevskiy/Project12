//
//  ViewController.swift
//  Project12
//
//  Created by Valeriy Kovalevskiy on 4/6/20.
//  Copyright © 2020 v.kovalevskiy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = UserDefaults.standard
        
        defaults.set(true, forKey: "UseFaceID")
        defaults.set(2.0, forKey: "Age")
        
        let array = ["Hello", "World"]
        defaults.set(array, forKey: "array")
        
        let dict = ["name" : "paul" , "country" : "UK"]
        defaults.set(dict, forKey: "dictionary")
        
        let savedArray = defaults.object(forKey: "array") as? [String] ?? [String]()
        let savedDictionary = defaults.object(forKey: "dictionart") as? [String : String] ?? [String : String]()
        
    }


}

