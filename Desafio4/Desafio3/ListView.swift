//
//  ListView.swift
//  Desafio3
//
//  Created by Turma02-28 on 26/08/24.
//

import SwiftUI

struct ListView: View {
    var body: some View {
      
        NavigationView{
            List {
                HStack{
                    Text("Item")
                    Spacer()
                    Image(systemName: "paintbrush.pointed")
                }
                HStack{
                    Text("Item")
                    Spacer()
                    Image(systemName: "paintpalette")
                }
                HStack{
                    Text("Item")
                    Spacer()
                    Image(systemName: "paintbrush")
                }
                .navigationTitle("List")
            }
        }
    }
}

#Preview {
    ListView()
}
