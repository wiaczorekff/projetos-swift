//
//  ContentView.swift
//  atividade-4
//
//  Created by Student04 on 04/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
           menu1()
                .tabItem {
                    Image(systemName: "menucard.fill")
                    Text("Menu")
                }
            Text("Carrinho")
                .tabItem {
                    Image(systemName: "cart.fill")
                    Text("Carrinho")
                }
            Text("Configurações")
                .tabItem {
                    Image(systemName: "gearshape.fill")
                    Text("Configurações")
                }
        }
       
      

        
        
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
