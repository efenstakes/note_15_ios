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
                    
                    ForEach(notes) { note in
                        NoteCardView(note: note)
                    }
                    
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

struct NoteCardView: View {
    let note: Note
    
    var body: some View {
        
        VStack(spacing: 0) {
            
            // image
            Image(note.image)
                .resizable()
                .frame(height: 260, alignment: .topLeading)
            
            
            // details
            HStack(alignment: .center) {
                
                VStack(alignment: .leading, spacing: 8) {
                    Text(note.title)
                        .font(.title2)
                        .bold()
                    
                    HStack {
                        Image(note.people[0].image)
                            .resizable()
                            .frame(width: 30, height: 30, alignment: .center)
                            .clipShape(Circle())
                        Text(note.people[0].name)
                            .font(.body)
                            .fontWeight(.regular)
                    }
                }
                
                Spacer()
                
                Text("Add new")
                    .font(.caption)
                    .padding()
                    .background(
                        Color.black.opacity(0.9)
                    )
                    .cornerRadius(10)
                
            }
            .padding()
            .frame(height: 100, alignment: .topLeading)
            .frame(maxWidth: .infinity)
            .foregroundColor(.white)
            .background(note.color.opacity(0.6))
            
        }
        .clipped()
        .frame(height: 360, alignment: .center)
        .frame(maxWidth: .infinity)
        .cornerRadius(20)
        .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
