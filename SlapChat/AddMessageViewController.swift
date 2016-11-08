//
//  AddMessageViewController.swift
//  SlapChat
//
//  Created by Benjamin Su on 11/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit
import CoreData



class AddMessageViewController: UIViewController {

    let store = DataStore.sharedInstance
    
    @IBOutlet weak var msgTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func addMsgButtonAction(_ sender: UIButton) {
        if msgTextField.text != "" {
            
            store.generateNewData(msg: msgTextField.text!)
            
            dismiss(animated: true, completion: { 
                
            })
            
        } else {
            print("Must have a message dummy")
        }
    }

}
