//
//  ContentView.swift
//  To Do list 3
//
//  Created by Morgan w Rees on 2/8/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct AssignmentItem: Identifiable
{
    var id = UUID()
    var priority = String()
    var descripition = String()
    var dueDate = Date()
    
@State var AssignmentItems =
    [AssignmentItem(priority: "High", description: "Study for History Test", dueDate: Date()),
     AssignmentItem(priority: "Medium", description: "Pick up clothes", dueDate: Date()),
     AssignmentItem(priority: "Low", description: "Eat a donut", dueDate: Date())]

}
