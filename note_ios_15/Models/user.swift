//
//  user.swift
//  note_ios_15
//
//  Created by MAC on 11/3/21.
//

import Foundation


struct User: Identifiable {
    let id: UUID = UUID()
    var name: String
    var image: String
}
