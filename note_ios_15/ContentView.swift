//
//  ContentView.swift
//  note_ios_15
//
//  Created by MAC on 11/3/21.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack {
                  
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                leading:
                    Text("Notes")
                    .font(.title)
                    .bold(),
                trailing:
                    Image(systemName: "plus")
                        .resizable()
                        .frame(width: 20, height: 20, alignment: .center)
            )
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
