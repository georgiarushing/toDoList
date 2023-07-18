//
//  ContentView.swift
//  toDoList
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack
        {
            HStack
            {
                Text("To Do List")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                    .foregroundColor(Color(hue: 0.34, saturation: 0.675, brightness: 0.674))
                
                Spacer()
                
                Button(action: { })
                {
                    Text("+")
                        .font(.largeTitle)
                }
                
                
            }
            .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
