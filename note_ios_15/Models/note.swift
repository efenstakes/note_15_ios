//
//  note.swift
//  note_ios_15
//
//  Created by MAC on 11/3/21.
//

import Foundation
import UIKit
import SwiftUI



struct Note: Identifiable {
    let id: UUID = UUID()
    var title: String
    var image: String
    var people: [User] = []
    var color: Color = .red
}



let users: [User] = [
    
    User(name: "Jenny Li", image: "p1"),
    User(name: "Mia Kovach", image: "p2"),
    User(name: "Wendy Porsche", image: "p3"),
    User(name: "Paulina Jay", image: "p4"),
    User(name: "Winy", image: "p5"),
    User(name: "Jane Psaki", image: "p6"),

]


let notes: Array<Note> = [

    Note(
        title: "Home",
        image: "1",
        people: [ users[5], users[0] ],
        color: .gray
    ),
    Note(
        title: "Work",
        image: "2",
        people: [ users[4], users[1], users[3] ],
        color: .orange
    ),
    Note(
        title: "Home",
        image: "3",
        people: [ users[1], users[0], users[3] ],
        color: .red
    ),
    Note(
        title: "Work",
        image: "4",
        people: [ users[3], users[1] ],
        color: .gray
    ),
    Note(
        title: "Home",
        image: "5",
        people: [ users[4], users[2] ],
        color: .brown
    ),
    Note(
        title: "Work",
        image: "1",
        people: [ users[3] ],
        color: .gray
    ),
    Note(
        title: "Work",
        image: "5",
        people: [ users[0], users[3] ],
        color: .gray
    ),

]
