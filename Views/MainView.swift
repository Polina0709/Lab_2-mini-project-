//
//  ContentView.swift
//  ToDoList
//
//  Created by Polya Melnik on 13.12.2023.
//
import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewMode()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            //signed in
            ToDoListView()
        } else {
            LoginView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

