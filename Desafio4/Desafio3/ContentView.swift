//
//  ContentView.swift
//  Desafio3
//
//  Created by Turma02-28 on 26/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{

            RosaView()
                .badge(2)
                .tabItem {
                    Label("Rosa", systemImage: "paintbrush")
                }
            AzulView()
                .tabItem {
                    Label("Azul", systemImage: "paintbrush.pointed")
                }
            
            CinzaView()
                .tabItem {
                    Label("Cinza", systemImage: "paintpalette")
                }
            ListView()
                .tabItem {
                    Label("Lista", systemImage: "list.bullet")
                }
        }
    }
}

#Preview {
    ContentView()
}
