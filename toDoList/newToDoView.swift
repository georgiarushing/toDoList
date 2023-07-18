//
//  newToDoView.swift
//  toDoList
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct newToDoView: View {
    @State var title: String
    @State var isImportant: Bool
    @Binding var toDoItems: .constant([])
    
    var body: some View {
        VStack{
            Text("Task Title:")
                .font(.title)
                .fontWeight(.bold)
            
            TextField("Enter the task description...", text: $title)
                .padding()
                .background(Color(.systemGroupedBackground))
                    .cornerRadius(15)
                    .padding()
            
            Toggle(isOn: $isImportant)
            {
                Text("Is it important?")
                    .font(.title2)
                    .padding()
            }
            .padding()
            
            Button(action: {self.addTask(title: self.title, isImportant: self.isImportant)})
            {
                Text("Add")
                    .font(.title2)
                    .fontWeight(.semibold)
            }
        }
    }
    
    private func addTask(title: String, isImportant: Bool = false)
    {
            let task = toDoItem(title: title, isImportant: isImportant)
            toDoItems.append(task)
    }

}

struct newToDoView_Previews: PreviewProvider {
    static var previews: some View {
        newToDoView(title: "", isImportant: false)
        
    }
}
