//
//  ContentView.swift
//  Desafio maps
//
//  Created by Turma02-28 on 29/08/24.
//

import SwiftUI
import MapKit
import Foundation

struct Location: Identifiable{
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    let flag: String
    let description: String
}
var arraymapa = [
    Location(name: "Brasil", coordinate: CLLocationCoordinate2D(latitude: -15.803731, longitude: -47.89),
              flag:
                "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Flag_of_Brazil.svg/250px-Flag_of_Brazil.svg.png",
              description:
                "O Brasil, um vasto país sul-americano, estende-se da Bacia Amazônica, no norte, até os vinhedos e as gigantescas Cataratas do Iguaçu, no sul. O Rio de Janeiro, simbolizado pela sua estátua de 38 metros de altura do Cristo Redentor, situada no topo do Corcovado, é famoso pelas movimentadas praias de Copacabana e Ipanema, bem como pelo imenso e animado Carnaval, com desfiles de carros alegóricos, fantasias extravagantes e samba."
             ),
    
    Location(name: "Pernambuco", coordinate: CLLocationCoordinate2D(latitude: -8.059620, longitude: -34.904696),
             flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/Bandeira_de_Pernambuco.svg/280px-Bandeira_de_Pernambuco.svg.png",
             description:
                "Pernambuco é um estado no nordeste do Brasil, no Oceano Atlântico. A sua capital moderna, o Recife, inclui um porto, a cidade velha e a popular área balnear de Boa Viagem. Ao largo da costa, o arquipélago vulcânico de Fernando de Noronha possui uma linha costeira dentada, praias poucos urbanizadas e um parque marítimo. A sul do Recife, a praia de Porto de Galinhas, protegida por um recife, oferece piscinas naturais. A norte encontra-se Olinda, uma cidade colonial situada entre uma vegetação exuberante."
            ),
    Location(name: "Bodoco", coordinate: CLLocationCoordinate2D(latitude: -7.777796, longitude: -39.93005),
             flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Bandeira_de_Bodocó.svg/240px-Bandeira_de_Bodocó.svg.png",
             description:
                "originalmente, Bodocó foi um distrito, subordinado ao então município de Granito, criado pela lei municipal nº 3, de 17 de novembro de 1909. Essa situação se manteve até 22 de maio de 1924, quando a lei estadual nº 1 650, promoveu Bodocó à condição de sede do município de Granito. Em decorrência, o decreto-lei estadual nº 92, de 31 de março de 1938, rebatizou Granito de Bodocó."
            )
]


struct ContentView: View {
   @State private var position = MapCameraPosition.region(MKCoordinateRegion(center:  CLLocationCoordinate2D(latitude:-7.777796 , longitude:-39.930052 ), span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)))
    
    @State private var locations = arraymapa[0]
    @State private var showingSheet: Bool = false
    var body: some View {
            ZStack{
                VStack{
                    VStack {
                        ZStack{
                            Color(.white)
                                .opacity(0.6)
                                .ignoresSafeArea()
                        }
                        VStack{
                            Text("Word map")
                                .font(.title)
                            Text(locations.name)
                        }
                    }
                    .frame(height: 100)
            
                Map(position: $position){
                    Annotation("",  coordinate: locations.coordinate){
                        Image(systemName: "signpost.right.fill")
                            .foregroundColor(.black)
                            .background(.white)
                            .font(.title)
                            .cornerRadius(3.0)
                            .onTapGesture {
                                showingSheet.toggle()
                            }
                            .sheet(isPresented: $showingSheet) {
                                VStack{
                                    Text(locations.name)
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .padding()
                                    AsyncImage(url: URL(string: locations.flag)){
                                        Image in Image
                                            .resizable().frame(width: 360, height:240)
                                    } placeholder:{
                                        
                                    }
                                    Text(locations.description)
                                        .padding()
                                }
                            }
                    }
                }
                .ignoresSafeArea()
                
           
                Spacer()
                    HStack{
                        ForEach(arraymapa) { location in
                            Button(action: {
                                locations = location
                                position = MapCameraPosition.region(MKCoordinateRegion(center:  location.coordinate, span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)))
                            }
                            ){
                                AsyncImage(url: URL(string: location.flag)){
                                    Image in Image
                                        .resizable()
                                        .frame(width: 120, height: 80)
                                    
                                }placeholder: {
                                    Color.yellow
                                }
                            }
                        }
                        
                    }
                    .padding()
                }
            
            
        }
    }
}

#Preview {
    ContentView()
}
