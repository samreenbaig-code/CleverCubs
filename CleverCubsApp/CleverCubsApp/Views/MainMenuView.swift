//
//  MainMenuView.swift
//  CleverCubsApp
//
//  Created by Abdulmohammad BAIG on 2025-10-07.
//

import SwiftUI

struct MainMenuView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Let’s Play!")
                    .font(.largeTitle)
                    .bold()
                
                HStack {
                    NavigationLink(destination: LettersView()) {
                        MenuCard(title: "ABC", imageName: "abc_icon")
                    }
                    NavigationLink(destination: ShapesView()) {
                        MenuCard(title: "Shapes", imageName: "shapes_icon")
                    }
                }
                
                HStack {
                    NavigationLink(destination: MemoryGameView()) {
                        MenuCard(title: "Memory", imageName: "memory_icon")
                    }
                    NavigationLink(destination: PuzzleView()) {
                        MenuCard(title: "Puzzles", imageName: "puzzle_icon")
                    }
                }
            }
            .padding()
        }
    }
}

struct MenuCard: View {
    var title: String
    var imageName: String

    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
            Text(title)
                .font(.headline)
                .foregroundColor(.black)
        }
        .frame(width: 150, height: 150)
        .background(Color.white)
        .cornerRadius(20)
        .shadow(radius: 5)
    }
}

