//
//  ToDoItem.swift
//  ToDoList
//
//  Created by Scholar on 8/2/23.
//

import Foundation

class ToDoItem {
    var title = ""
    var isImportant = true
    
    init(title: String, isImportant: Bool = false) {
            self.title = title
            self.isImportant = isImportant
        }
}
