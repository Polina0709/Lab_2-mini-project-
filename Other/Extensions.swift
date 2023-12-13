//
//  Extensions.swift
//  ToDoList
//
//  Created by Polya Melnik on 13.12.2023.
//

import Foundation

extension Encodable {
    func asDictionary() -> [String: Any] {
        guard let data = try? JSONEncoder().encode(self) else {
            return [:]
        }
        do {
            let json = try JSONSerialization.jsonObject(with: <#T##Data#>) as? [String: Any]
        } catch {
            return[:]
        }
    }
}
