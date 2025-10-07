//
//  SplashView.swift
//  CleverCubsApp
//
//  Created by Abdulmohammad BAIG on 2025-10-07.
//

import SwiftUI

struct SplashView: View {
    @State private var isActive = false

    var body: some View {
        if isActive {
            SignUpView()
        } else {
            VStack {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                Text("Clever Cubs")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.purple)
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                    withAnimation {
                        isActive = true
                    }
                }
            }
        }
    }
}

