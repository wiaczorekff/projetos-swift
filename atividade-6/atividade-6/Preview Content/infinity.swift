//
//  infinity.swift
//  atividade-6
//
//  Created by Student04 on 04/09/23.
//

import SwiftUI

struct infinity: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink("acesse a ultima pagina") {
                    pag3()
                    
                    
                }
                
            }
        }
    }
}

struct infinity_Previews: PreviewProvider {
    static var previews: some View {
        infinity()
    }
}
