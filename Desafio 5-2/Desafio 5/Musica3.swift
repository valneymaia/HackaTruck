//
//  Musica3.swift
//  Desafio 5
//
//  Created by Turma02-28 on 27/08/24.
//

import SwiftUI

struct Musica3: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea(.all)
            
            
            VStack{
                Spacer()
            /*    AsyncImage(url: URL(string: "https://i.scdn.co/image/ab67616d0000b273d400d27cba05bb0545533864")){
                        Image in Image
                        .resizable()
                } placeholder: {
                    Color.gray
                }
                .frame(width: 250, height: 250)
              */
                
                Spacer()
                
                HStack{
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
                    Image(systemName: "play.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.white)
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
                }
                Spacer()
                Spacer()
            }
        
         
        }
    }
}

#Preview {
    Musica3()
}
