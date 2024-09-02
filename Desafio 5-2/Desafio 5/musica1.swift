//
//  musica1.swift
//  Desafio 5
//
//  Created by Turma02-28 on 27/08/24.
//

import SwiftUI
import AVKit

struct musica1: View {
    var musica: Song
    @State var audioPlayer: AVAudioPlayer!
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea(.all)
                
            
            
                
                VStack{
                    Spacer()
                    AsyncImage(url: URL(string: musica.capa)){
                        Image in Image
                            .resizable()
                    } placeholder: {
                        Color.gray
                    }
                    .frame(width: 250, height: 250)
                    Text(musica.name)
                        .font(.title2)
                        .colorInvert()
                    Text(musica.artist)
                        .font(.title2)
                        .colorInvert()
                    Spacer()
                    
                    HStack{
                        Spacer()
                        Spacer()
                        Image(systemName: "shuffle")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.white)
                        Spacer()
                        Image(systemName: "backward.end.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.white)
                        Spacer()
                        Button(action: {
                            self.audioPlayer.play()
                        }) {
                            Image(systemName: "play.circle.fill").resizable()
                                .frame(width: 50, height: 50)
                                .aspectRatio(contentMode: .fit)
                        }
                        Spacer()
                        Button(action: {
                            self.audioPlayer.pause()
                        }) {
                            Image(systemName: "pause.circle.fill").resizable()
                                .frame(width: 50, height: 50)
                                .aspectRatio(contentMode: .fit)
                        }
                        Spacer()
                        Image(systemName: "forward.end.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.white)
                        Spacer()
                        Image(systemName: "repeat")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.white)
                        Spacer()
                        Spacer()
                    }
                    Spacer()
                    Spacer()
                }
                
                
            }
        .onAppear {
                           let sound = Bundle.main.path(forResource: "Black", ofType: "mp3")
                           self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
                       }
        }
    
       
    }
    
    #Preview {
        musica1(musica: Song(id: 08, name: "oi", artist: "matheus", capa: "") )
    }
