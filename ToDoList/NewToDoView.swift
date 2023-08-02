//
//  NewToDoView.swift
//  ToDoList
//
//  Created by Scholar on 8/2/23.
//

import SwiftUI

struct NewToDoView: View {
    @State var title: String
    @State var isImportant: Bool
    var body: some View {
        VStack {
            Text("Task title")
            
            TextField("Enter the task description...", text: $title)
            
            Toggle(isOn: $isImportant) {
                Text("Is it important?")
                
            } .padding()
            Button(action: {}) {
                Text("Add")
            } .padding()// closing button
        }// closing vstack
    } //closing view
} //closing struct

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(title: "", isImportant: false)
    }
}
