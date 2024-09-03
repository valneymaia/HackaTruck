//
//  ViewModel.swift
//  crud
//
//  Created by Turma02-28 on 03/09/24.
//

import Foundation

class ViewModel : ObservableObject {
    @Published var chars : [Estacionamento] = []
    
    func fetch(){
        let task = URLSession.shared.dataTask(with: URL(string: "http://127.0.0.1:1880/pegar")!){data, _, error in
            do{
                self.chars = try JSONDecoder().decode([Estacionamento].self, from: data!)
            } catch {
                print(error)
            }
        }
        task.resume()
    }
    
}
