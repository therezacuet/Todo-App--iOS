//
//  ViewController.swift
//  ToDo App
//
//  Created by Md. Nasir on 5/9/18.
//  Copyright © 2018 MCC. All rights reserved.
//

import UIKit

class AddTodoViewCOntroller: UIViewController {

    @IBOutlet weak var toDoNameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addToDoButtonAction(_ sender: UIButton) {
        
        if (toDoNameTextField.text != nil) && toDoNameTextField.text != ""{
            toDoList?.append(toDoNameTextField.text!)
            toDoNameTextField.text = ""
            toDoNameTextField.placeholder = "Add More?"
        }
    }
    
}

