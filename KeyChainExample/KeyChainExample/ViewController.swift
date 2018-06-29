//
//  ViewController.swift
//  KeyChainExample
//
//  Created by Akash Soneji on 29/06/18.
//  Copyright © 2018 Akash. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let service = "myService"
    let account = "myAccount"

    override func loadView() {
        super.loadView()
        if let str = KeychainService.load(service: service, account: account) {
            print(str)
        } else {
            print("not exist")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        KeychainService.save(service: service, account: account, data: "test String")
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

