//
//  SignUpView.swift
//  CleverCubsApp
//
//  Created by Abdulmohammad BAIG on 2025-10-07.
//

import SwiftUI

struct SignUpView: View {
    @State private var childName = ""
    @State private var parentEmail = ""
    @State private var ageGroup = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Let's Create Your Account")
                .font(.title)
                .bold()
            
            TextField("Child’s Name", text: $childName)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)

            TextField("Parent Email", text: $parentEmail)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)

            TextField("Age Group (3-6 years)", text: $ageGroup)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            
            NavigationLink(destination: MainMenuView()) {
                Text("Start Playing")
                    .bold()
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.horizontal)
            }
        }
        .padding()
    }
}
