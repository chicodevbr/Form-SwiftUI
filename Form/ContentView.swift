//
//  ContentView.swift
//  Form
//
//  Created by fjunior on 25/10/22.
//

import SwiftUI

struct ContentView: View {
    @State private var emailAddress = ""
    @State private var message = "Write your message here..."
    @State private var includeLogs = false
    
    var body: some View {
        Form {
            TextField("Email Address", text: $emailAddress)
            TextEditor(text: $message)
            Toggle("Include Logs", isOn: $includeLogs)
            Button("Submit", action: {
                print("Submit button tapped")
            })
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
