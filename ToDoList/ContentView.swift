//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 8/2/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
        
            HStack {
                Text("To Do List")
                .font(.system(size: 40))
                .fontWeight(.black)
                
                Spacer()
                
                Button(action: {}) {
                Text("+")
                }
               
            } .padding()//closing hstack
            
        Spacer()
        }// closing vstack
        
    }// closing body
}// closing content view

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
