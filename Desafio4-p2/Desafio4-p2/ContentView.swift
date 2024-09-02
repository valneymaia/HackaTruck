//
//  ContentView.swift
//  Desafio4-p2
//
//  Created by Turma02-28 on 26/08/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showingSheet: Bool = false
    var body: some View {
            NavigationStack{
                ZStack{
                    Color(.blue)
                        .ignoresSafeArea(.all)
                    VStack{
                        NavigationLink(destination: Modo1View()){
                            Text("modo1")
                        }
                        .foregroundColor(.white)
                        .frame(width: 250, height: 100)
                        .background(.pink)
                        .cornerRadius(7)
                        NavigationLink(destination: Modo2View()){
                            Text("modo2")
                        }
                        .foregroundColor(.white)
                        .frame(width: 250, height: 100)
                        .background(.pink)
                        .cornerRadius(7)
                        Button("modo 3"){
                            showingSheet.toggle()
                        }
                        .sheet(isPresented: $showingSheet){
                            Modo3View()
                        }
                        .foregroundColor(.white)
                        .frame(width: 250, height: 100)
                        .background(.pink)
                        .cornerRadius(7)
                        
                    }
                }
            }
    }
}

#Preview {
    ContentView()
}
