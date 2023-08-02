//
//  NewToDoView.swift
//  ToDoList
//
//  Created by Scholar on 8/2/23.
//

import SwiftUI

struct NewToDoView: View {
    @Environment(\.managedObjectContext) var context
    @State var title: String
    @State var isImportant: Bool
    
    @Binding var showNewTask: Bool
    var body: some View {
        VStack {
            Text("Task title")
            
            TextField("Enter the task description...", text: $title)
            
            Toggle(isOn: $isImportant) {
                Text("Is it important?")
                
            } .padding()
            Button(action: {
                self.addTask(title: self.title, isImportant: self.isImportant)
                self.showNewTask = false
            }) {
                Text("Add")
            } .padding()// closing button
        }.padding() // closing vstack
    } //closing view
    
    private func addTask(title: String, isImportant: Bool = false) {
            
        let task = ToDo(context: context)
        task.id = UUID()
        task.title = title
        task.isImportant = isImportant
                
        do {
                    try context.save()
        } catch {
                    print(error)
        }
        
        }
    
} //closing struct





struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(title: "", isImportant: false, showNewTask: .constant(true))
    }
}
