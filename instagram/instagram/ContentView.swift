//
//  ContentView.swift
//  instagram
//
//  Created by Turma02-28 on 21/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            HStack{
                Text("username")
                    .fontWeight(.bold)
                    .font(.system(size: 30))
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Image(systemName: "arrow.clockwise")
                Spacer()
                Image(systemName: "line.3.horizontal")
                
                }
            .padding()
        }
        VStack{
            HStack{
                Spacer()
                Circle()
                    .frame( width: 130, height: 130)
                Spacer()
                VStack{
                    HStack{
                        VStack{
                            HStack{
                                VStack{
                                    Text("8")
                                        .fontWeight(.bold)
                                    Text("posts")
                                        .font(.footnote)
                                }
                                
                                VStack{
                                    Text("12k")
                                        .fontWeight(.bold)
                                    Text("seguindores")
                                        .font(.footnote)
                                }
                                VStack{
                                    Text("2k")
                                        .fontWeight(.bold)
                                    Text("seguindo")
                                        .font(.footnote)
                                }
                            }
                            .padding()
                            VStack{
                                Text("Editar perfil")
                                    .foregroundColor(.blue)
                                    .background(.white)
                                
                            }
                        }}
                
                    Text("Nome Sobrenome")
                }
            }

        }
        
        Spacer()
        
        
    }
}

#Preview {
    ContentView()
}
