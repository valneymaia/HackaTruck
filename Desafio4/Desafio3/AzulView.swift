//
//  AzulView.swift
//  Desafio3
//
//  Created by Turma02-28 on 26/08/24.
//

import SwiftUI

struct AzulView: View {
    var body: some View {
        ZStack{
            Color(.blue)
                .edgesIgnoringSafeArea(.top)
                ZStack{
                    Circle()
                        .frame( width: 400, height: 300)
                    Image(systemName: "paintbrush.pointed")
                        .font(.system(size: 180))
                        .foregroundColor(.blue)
                }
            
        }
    }
}

#Preview {
    AzulView()
}
