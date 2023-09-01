//
//  ContentView.swift
//  Projeto2
//
//  Created by Student04 on 31/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {

            Image("Captura de Tela 2023-01-18 às 00.12.11")
                .resizable()
                .scaledToFit()
                
                
                
            Image("Captura de Tela 2023-01-18 às 00.12.11")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                
            HStack{
                Text("Maker")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(.yellow)
                Text("Space")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                .foregroundColor(.red)
                
                
            }  .frame(width: 270, height: 250)
                .background(.black)
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
