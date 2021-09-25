//
//  ViewController.swift
//  project12
//
//  Created by Pipe Carrasco on 25-09-21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let defaults = UserDefaults.standard
        
        defaults.set(25, forKey: "Age")
        defaults.set(true, forKey: "UserFaceID")
        defaults.set(CGFloat.pi, forKey: "Pi")
        
        defaults.set("Felipe", forKey: "Name")
        defaults.set(Date(), forKey: "LastRun")
        
        let array = ["Hello", "World"]
        defaults.set(array, forKey: "SavedArray")
        
        let dict = ["Name": "Felipe", "Country": "Chile"]
        defaults.set(dict, forKey: "savedDictionary")
        
        
        let savedInteger = defaults.integer(forKey: "Age")
        let savedBoolean = defaults.bool(forKey: "UseFaceID")
        
        let savedArray = defaults.object(forKey: "SavedArray") as? [String] ?? [String]()
        let savedDictionary = defaults.object(forKey: "savedDictionary") as? [String: String] ?? [String: String]()
        
        let savedArray2 = defaults.array(forKey: "SavedArray")
        let savedDictionary2 = defaults.dictionary(forKey: "savedDictionary")
        
    }


}

