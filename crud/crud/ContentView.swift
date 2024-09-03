//
//  ContentView.swift
//  crud
//
//  Created by Turma02-28 on 03/09/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewmodel = ViewModel()
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue, .green]), startPoint: .top, endPoint: .bottom)
                                .ignoresSafeArea(.all)
            ScrollView{
                VStack {
                    Text("Parking Lot")
                        .font(.title)
                    ForEach(viewmodel.chars, id: \.self){ p in
                        HStack{
                            Text(p.nomeEstacionamento!)
                                .font(.title)
                                .foregroundStyle(.white)
                            Text(p.quantidadeVagas!)
                                .font(.title)
                                .foregroundStyle(.white)
                        }
                        ForEach(p.carros!, id: \.self) { p1 in
                            AsyncImage(url: URL(string: p1.foto!)){
                                        Image in Image
                                        .resizable()
                                        } placeholder: {
                                            Color.gray
                                    }
                                    .frame(width: 300, height: 200)
                            HStack{
                                Text(p1.modelo!)
                                    .font(.title)
                                Text("\(String(describing: p1.ano!))")
                                    .font(.title)
                                Text(p1.cor!)
                                    .font(.title)
                                
                            }
                            HStack{
                                Text("\(String(describing: p1.preco!))")
                                    .font(.title)
                               
                            }
                        
                        }
                        
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
