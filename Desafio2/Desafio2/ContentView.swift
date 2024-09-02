//
//  ContentView.swift
//  Desafio2
//
//  Created by Turma02-28 on 22/08/24.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = "Fulano"
    @State private var showingAlert = true
    var body: some View {
        ZStack{
           Image("caminhão")
                .resizable(resizingMode: .stretch)
                .ignoresSafeArea()
                .scaledToFill()
                .opacity(0.3)

            VStack{
                
                VStack{
                    Text("Bemvindo, \(name)!")
                        .font(.title)
                    TextField("name", text: $name)
                        .background(.white)
                        .frame(width: 100)
                }
                Spacer()
                VStack{
                    Image("logo")
                        .resizable()
                        .frame(width: 200, height: 100)
                    Image("truck")
                        .resizable()
                        .frame(width: 200, height: 100)
                }
                Spacer()
                
                Button("entrar"){
                    showingAlert = true
                }
                .alert(isPresented: $showingAlert){
                    Alert (
                        title: Text("ALERTA !"),
                        message: Text("voce irá iniciar um desafio da aula agora"),
                        dismissButton: .default(Text("Vamos lá"))
                        
                    )
                }
            }
            
        }
    }
}

#Preview {
    ContentView()
}
