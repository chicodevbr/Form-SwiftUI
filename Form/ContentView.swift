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
    @State private var subject = "Help"
    @State private var includeLogs = false
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("How can we reach you?")) {
                    TextField("Email Address", text: $emailAddress)
                }
                Section(header: Text("What can we help you with?")) {
                    Picker("Subject", selection: $subject) {
                        ForEach(["Help", "Suggestion", "Bug Report"], id: \.self) { subject
                            in
                            Text(subject)
                        }
                    }
                }
                Section(header: Text("Briefly explain what's going on.")){
                    TextEditor(text: $message)
                }
                Section(footer: Text("This information will be sent anonymously.")) {
                    
                    Toggle("Include Logs", isOn: $includeLogs)
                }
                Button("Submit", action: {
                    print("Submit button tapped")
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
