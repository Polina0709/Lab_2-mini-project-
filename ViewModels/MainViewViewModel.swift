//
//  MainViewViewModel.swift
//  ToDoList
//
//  Created by Polya Melnik on 13.12.2023.
//

import Foundation
import FirebaseAuth

class MainViewViewMode: ObservableObject {
    @Published var currentUserId: String = ""
    private var handler: AuthStateDidChangeListenerHandle?
    
    init() {
        self.handler = Auth.auth().addStateDidChangeListener { [weak self]_, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }
        }
    }
    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil
    }
}
