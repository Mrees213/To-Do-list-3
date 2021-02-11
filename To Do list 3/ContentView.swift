//
//  ContentView.swift
//  To Do list 3
//
//  Created by Morgan w Rees on 2/8/21.
//

import SwiftUI


struct ContentView: View {
    @ObservedObject var assignmentList = AssignmentList
    
    var body: some View
    {
        NavigationView {
            List {
                ForEach(assignmentList.items) { item in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(item.course)
                                .font(.headline)
                            Text(item.description)
                        }
                        Spacer()
                        Text(item.dueDate, style: .date)
                    }
                }
                .onMove(perform: { indices, newOffset in
                    assignmentList.items.move(fromOffsets: indices, toOffset: newOffset)
                })
                .onDelete(perform: { indexSet in
                    assignmentList.items.remove(atOffsets: indexSet)
                })
            }
            .navigationBarTitle("AssignmentList")
            .navigationBarItems(leading: EditButton())
        }
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
    var course = String()
    var description = String()
    var dueDate = Date()
    
}


