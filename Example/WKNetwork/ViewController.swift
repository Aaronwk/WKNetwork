//
//  ViewController.swift
//  WKNetwork
//
//  Created by objective on 03/08/2018.
//  Copyright (c) 2018 objective. All rights reserved.
//

import UIKit
import WKNetwork

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(Bundle.main.bundlePath)
        // Do any additional setup after loading the view, typically from a nib.
        
        
        WKNetwork.request({ (r) in
            r.path = "front_policyType"
            r.responseType = .text
        }, suc: { (s) in
            print(s ?? "")
        }) { (e) in
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

