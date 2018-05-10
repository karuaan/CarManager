//
//  ViewController.swift
//  CarManager Final Project
//
//  Created by admin on 5/7/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // object for requesting vehicle metrics
    let obd = OBD2()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func connectButton(_ sender: Any) {
        //obd.requestTroubleCodes()
        obd.connect { [weak self] (success, error) in
            OperationQueue.main.addOperation {
                if let error = error {
                    print("OBD Connection failed with \(error)")
                }
            }
        }
    }
    
}

