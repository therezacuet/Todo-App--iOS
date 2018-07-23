//
//  ToDoModel.swift
//  ToDo App
//
//  Created by Md. Nasir on 5/9/18.
//  Copyright © 2018 MCC. All rights reserved.
//

import Foundation

var toDoList:[String]?

func saveData(toDoList:[String]){
    UserDefaults.standard.set(toDoList, forKey: "toDoList")
}

func fetchData() -> [String]?{
    if let todo = UserDefaults.standard.array(forKey: "toDoList") as! [String]?{
        return todo
    }
    else{
        return nil
    }
}
