//
//  CinzaView.swift
//  Desafio3
//
//  Created by Turma02-28 on 26/08/24.
//

import SwiftUI

struct CinzaView: View {
    var body: some View {
        ZStack{
            Color(.gray)
                .edgesIgnoringSafeArea(.top)
                ZStack{
                    Circle()
                        .frame( width: 400, height: 300)
                    Image(systemName: "paintpalette")
                        .font(.system(size: 180))
                        .foregroundColor(.gray)
                }
            
        }
    }
}

#Preview {
    CinzaView()
}
