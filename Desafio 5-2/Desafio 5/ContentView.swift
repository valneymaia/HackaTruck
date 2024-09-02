//
//  ContentView.swift
//  Desafio 5
//
//  Created by Turma02-28 on 27/08/24.
//

import SwiftUI

struct Song : Identifiable{
    var id : Int
    var name : String
    var artist : String
    var capa : String
}

var arrayMusicas = [
    Song(id: 4, name: "Numb", artist: "LinkPark", capa:"https://m.media-amazon.com/images/I/81iC+O0ec2L._UF1000,1000_QL80_.jpg" ),
    Song(id: 5, name: "Lost", artist: "Link park", capa: "https://m.media-amazon.com/images/I/81iC+O0ec2L._UF1000,1000_QL80_.jpg"),
    Song(id: 6, name: "Black", artist: "PearlJam", capa: "https://i.scdn.co/image/ab67616d0000b273d400d27cba05bb0545533864"),
    Song(id: 7, name: "Numb", artist: "LinkPark", capa:"https://m.media-amazon.com/images/I/81iC+O0ec2L._UF1000,1000_QL80_.jpg" ),
    Song(id: 8, name: "Lost", artist: "Link park", capa: "https://m.media-amazon.com/images/I/81iC+O0ec2L._UF1000,1000_QL80_.jpg"),
    Song(id: 9, name: "Black", artist: "PearlJam", capa: "https://i.scdn.co/image/ab67616d0000b273d400d27cba05bb0545533864"),
    Song(id: 3, name: "Numb", artist: "LinkPark", capa:"https://m.media-amazon.com/images/I/81iC+O0ec2L._UF1000,1000_QL80_.jpg" ),
    Song(id: 2, name: "Lost", artist: "Link park", capa: "https://m.media-amazon.com/images/I/81iC+O0ec2L._UF1000,1000_QL80_.jpg"),
    Song(id: 1, name: "Black", artist: "PearlJam", capa: "https://i.scdn.co/image/ab67616d0000b273d400d27cba05bb0545533864")
]

struct ContentView: View {
   
    var body: some View {
        NavigationStack{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea(.all)
                VStack{
                    VStack {
                        AsyncImage(url: URL(string: "https://lh3.googleusercontent.com/proxy/CJdrXjzAdaQVufska0AulhfPmT8bvqSLmwfB7m6h3-6qC__iYiyFRGNLHZNoB-EXXi4WxXwO2mY8E1i_NTtGzDDGcDMDvadfW90KyTHa3p4ljRCk-8MK9OQ1l6PEBxU1RMFPwgJ4k-yumKngSo2u54eJHuiJ7WVS7Y2sNchW8n_a6dCNUkrOKFSvoRBd9yjmnWtzuoMD6pbBwiEZ-FVcPy-Gdq4RtuPvh-RO5vAJxEY")){
                            Image in Image
                                .resizable()
                        } placeholder: {
                            Color.gray
                        }
                        .frame(width: 200, height: 200)
                        
                        VStack{
                            VStack{
                                HStack{
                                    Text("HackFM")
                                        .font(.title)
                                        .colorInvert()
                                        .bold()
                                    Spacer()
                                }
                                HStack{
                                    Image("Caminhão")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                    Text("HackSong")
                                        .colorInvert()
                                    Spacer()
                                }
                                
                            }
                            .padding()
                        }
                        ScrollView{
                            
                            ForEach(arrayMusicas) { musc in
                                NavigationLink(destination : musica1 (musica: musc )){
                                    
                                    
                                    HStack{
                                        AsyncImage(url: URL(string: musc.capa)){
                                            Image in Image
                                                .resizable()
                                        } placeholder: {
                                            Color.gray
                                        }
                                        .frame(width: 50, height: 50)
                                        
                                        VStack{
                                            HStack{
                                                Text(musc.name)
                                                    .font(.title2)
                                                    .foregroundColor(.white)
                                                Spacer()
                                            }
                                            HStack{
                                                Text(musc.artist)
                                                    .font(.title2)
                                                    .foregroundColor(.white)
                                                    Spacer()
                                            }
                                        }
                                        HStack{
                                            Spacer()
                                            Text("...")
                                                .font(.title)
                                
                                        }
                                        Spacer()
                                    }
                                    .padding()
                                }
                            }
                            ScrollView(.horizontal){
                                VStack{
                                    HStack{
                                        Text("sugestões")
                                            .font(.title)
                                            .colorInvert()
                                            .bold()
                                        Spacer()
                                    }
                                    HStack{
                                        VStack{
                                            AsyncImage(url: URL(string: "https://i.scdn.co/image/ab67616d0000b27330d45198d0c9e8841f9a9578")){
                                                Image in Image
                                                    .resizable()
                                            } placeholder: {
                                                Color.gray
                                            }
                                            .frame(width: 200, height: 200)
                                            
                                            Text("System of Down")
                                                .foregroundStyle(.white)
                                        }
                                        VStack{
                                            AsyncImage(url: URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGr-ZHmZ2bravAu2eDSeVv2w9AIhYei3l_kw&s")){
                                                Image in Image
                                                    .resizable()
                                            } placeholder: {
                                                Color.gray
                                            }
                                            .frame(width: 200, height: 200)
                                            
                                            Text("Guns n Roses")
                                                .foregroundColor(.white)
                                        }
                                        VStack{
                                            AsyncImage(url: URL(string: "https://m.media-amazon.com/images/I/610RGJlG1ZL._AC_UF1000,1000_QL80_.jpg")){
                                                Image in Image
                                                    .resizable()
                                            } placeholder: {
                                                Color.gray
                                            }
                                            .frame(width: 200, height: 200)
                                                Text("Pink Floyd")
                                                .foregroundColor(.white)
                                        }
                                    }
                                }
                            }
                            
                        }
                    }
                }
            }
        }
    }
}


#Preview {
    ContentView()
}

