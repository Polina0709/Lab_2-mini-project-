//
//  TLButton.swift
//  ToDoList
//
//  Created by Polya Melnik on 13.12.2023.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let backgroud: Color
    let action: () -> Void
    
    var body: some View {
        Button{
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(backgroud)
                
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
    }
}

    struct TLButton_Previews: PreviewProvider {
        static var previews: some View {
            TLButton(title: "Value",
                     backgroud: .pink) {
                // Action
            }
    }
}
