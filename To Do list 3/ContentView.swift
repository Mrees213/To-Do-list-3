//
//  ContentView.swift
//  To Do list 3
//
//  Created by Morgan w Rees on 2/8/21.
//

import SwiftUI

class AssignmentList {
struct ContentView: View {
    @ObservedObject var AssignmentList = AssignmentsList()
    var body: some View {
        .navigationBarTitle("AssignmentList") {
                       List {
                        ForEach($AssignmentList.items) { Item in VStack(alignment: .leading) {
                             Text(item.course)
                                    .font(.headline)
                                Text(item.description)
                            }
                                Spacer()
                            Text(Item.dueDate, style: .date)
                                        }
                            }
                        .onMove(perform: { indices, newOffset in
                            AssignmentList.Item.move(fromOffsets: indices, toOffset: newOffset)
                        })
                        .onDelete(perform: { indexSet in
                            To_Do_list_3.AssignmentList.Item.remove(atOffsets: indexSet)
                                        })
        }
                            .navigationBarTitle("AssignmentList")
                        .navigationBarItems(leading: EditButton())
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
    var Course = String()
    var descripition = String()
    var dueDate = Date()
    
}
}
