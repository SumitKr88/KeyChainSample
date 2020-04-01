//
//  ViewController.swift
//  KeyChainSample
//
//  Created by Kumar, Sumit on 01/04/20.
//  Copyright © 2020 sk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let tokenKey = "token"
    let account = "Autherization"
    let testData = "TestToken"
    let updatedData = "TestToken Updated"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /// Save
        let data = testData.toData()
        var status = KeyChain.saveData(service: tokenKey, account: account, data: data)
        print("Save status = \(status)")
        
        /// Retrive/Load
        if let receivedData = KeyChain.loadData(service: tokenKey, account: account) {
            let result = receivedData.toString()
            print("Result , Post Save = \(result)")
        }
        
        /// Update
        let updatedValue = updatedData.toData()
        status = KeyChain.updateData(service: tokenKey, account: account, data: updatedValue)
        print("Update status = \(status)")
        
        /// Retrive/Load
        if let receivedData = KeyChain.loadData(service: tokenKey, account: account) {
            let result = receivedData.toString()
            print("Result , Post Update = \(result)")
        }
        
        /// Delete/Remove
        status = KeyChain.removeData(service: tokenKey, account: account)
        print("Delete status = \(status)")
        
    }


}

