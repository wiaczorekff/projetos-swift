//
//  telegram.swift
//  atividade-6
//
//  Created by Student04 on 04/09/23.
//

import SwiftUI

struct telegram: View {
    @State private var nome = ""
    var body: some View {
        
        VStack {
            TextField("placeholder", text: $nome).multilineTextAlignment(.center)
            Text("Test \(nome)")
            NavigationLink("Acessar Tela") {
                Text("test \(nome)")
            }
        }
    }
}

struct telegram_Previews: PreviewProvider {
    static var previews: some View {
        telegram()
    }
}
