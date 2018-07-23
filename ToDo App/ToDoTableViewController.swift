//
//  ToDoTableViewController.swift
//  ToDo App
//
//  Created by Md. Nasir on 5/9/18.
//  Copyright © 2018 MCC. All rights reserved.
//

import UIKit

class ToDoTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    
    
    @IBOutlet weak var toDoTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        toDoTableView.delegate = self
        toDoTableView.dataSource = self
        
        toDoTableView.layoutMargins = UIEdgeInsets.zero
        toDoTableView.separatorInset = UIEdgeInsets.zero
        
        
        toDoTableView.separatorStyle = UITableViewCellSeparatorStyle.singleLine
        
        toDoTableView.separatorColor = UIColor(red: 245/255, green: 245/255, blue: 245/255, alpha: 1.0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        toDoTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (toDoList?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        if let todo = toDoList{
            cell.textLabel?.text = todo[indexPath.row]
        }
        
        cell.layoutMargins = UIEdgeInsets.zero
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            toDoList?.remove(at: indexPath.row)
            toDoTableView.reloadData()
        }
    }
    
    @IBAction func developerAlert(_ sender: UIBarButtonItem) {
        
        let alert = UIAlertController(title: "What's your name?", message: nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        alert.addTextField(configurationHandler: { textField in
            textField.placeholder = "Input your name here..."
        })
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            
            if let name = alert.textFields?.first?.text {
                print("Your name: \(name)")
            }
        }))
        
        self.present(alert, animated: true)
    }
    

}
