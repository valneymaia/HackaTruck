//
//  RosaView.swift
//  Desafio3
//
//  Created by Turma02-28 on 26/08/24.
//

import SwiftUI

struct RosaView: View {
    var body: some View {
        ZStack{
            Color(.pink)
                .edgesIgnoringSafeArea(.top)
                
                ZStack{
                    Circle()
                        .frame( width: 400, height: 300)
                    Image(systemName: "paintbrush")
                        .font(.system(size: 180))
                        .foregroundColor(.pink)
                }
               
        }
    
    }
}

#Preview {
    RosaView()
}
