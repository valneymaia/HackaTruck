//
//  Model.swift
//  crud
//
//  Created by Turma02-28 on 03/09/24.
//

import Foundation

struct car: Decodable, Hashable{
    let modelo: String?
    let ano: Int?
    let cor: String?
    let preco: Double?
    let foto: String?
}

struct Estacionamento: Decodable, Hashable {
    let _id: String
    let nomeEstacionamento: String?
    let quantidadeVagas: String?
    let carros: [car]?
    
    
}

