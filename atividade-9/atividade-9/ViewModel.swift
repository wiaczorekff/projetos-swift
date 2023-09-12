//
//  ViewModel.swift
//  atividade-9
//
//  Created by Student04 on 12/09/23.
//

import Foundation

struct Carro {
    let codigo: String
    let nome: String
}


class ViewModel : ObservableObject {
    @Published var chars : [Carro] = []
    
    func fetch(){
        guard let url = URL(string: "https://parallelum.com.br/fipe/api/v1/carros/marcas") else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
                guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([Carro].self, from: data)
                
                DispatchQueue.main.async {
                    self?.chars = parsed
                }
            }catch{
                print(error)
            }
        }
        
        task.resume()
    }
}

