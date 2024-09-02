//
//  ContentView.swift
//  desafio api
//
//  Created by Turma02-28 on 30/08/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewmodel = ViewModel()
    var body: some View {
        ZStack{
            Color(.black)
                .ignoresSafeArea()
            ScrollView{
                VStack {
                    Text("teste \(viewmodel.chars.count)")
                    ForEach(viewmodel.chars){ p in
                            Text(p.name!)
                                .font(.title)
                                .foregroundStyle(.white)
                        
                    }
                    
                }
                .onAppear() {
                    viewmodel.fetch()
                }
                
            }
        }
        
    }
}

#Preview {
    ContentView()
}


