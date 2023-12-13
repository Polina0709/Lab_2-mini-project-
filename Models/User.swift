//
//  User.swift
//  ToDoList
//
//  Created by Polya Melnik on 13.12.2023.
//

import Foundation

struct User: Codable{
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
