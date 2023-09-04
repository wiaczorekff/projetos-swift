//
//  ContentView.swift
//  atividade-6
//
//  Created by Student04 on 04/09/23.
//

import SwiftUI

struct ContentView: View {
    @State private var mostraSheet = false
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink("instagram") {
                    instagram()
                   
                }
                NavigationLink("telegram"){
                    telegram()
                    
                }
                Button("mostrar sheet"){
                    mostraSheet.toggle()
                }
                .sheet(isPresented: $mostraSheet){
                    
                    Text("isso ė uma sheet")
                        .padding()
                }
            }
            .navigationTitle("hiperlinks")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
