//
//  ContentView.swift
//  atividade 3
//
//  Created by Student04 on 01/09/23.
//

import SwiftUI

struct ContentView: View {
    @State private var peso: Double = 0.0
    @State private var altura: Double = 0.0
    @State private var imc: Double = 0.0
    @State private var classificacao: String = ""
    @State private var corDeFundo: Color = Color.white
    
    var body: some View {
        VStack {
            Text("Calculadora de IMC")
                .font(.largeTitle)
            
            TextField("Peso (kg)", value: $peso, format: .number).textFieldStyle(.roundedBorder)
                .padding()
            
            TextField("Altura (m)", value: $altura, format: .number).textFieldStyle(.roundedBorder)
                .padding()
            Button("Calcular") {
                imc = peso / (altura * altura)
                if imc < 18.5 {
                    corDeFundo = Color("BaixoPesoColor")
                    classificacao = "Abaixo do Peso"
                } else if imc < 24.9 {
                    corDeFundo = Color("NormalColor")
                    classificacao = "Normal"
                } else if imc < 29.9 {
                    corDeFundo = Color("SobrepesoColor")
                    classificacao = "Sobrepeso"
                } else {
                    corDeFundo = Color("ObesoColor")
                    classificacao = "Obeso"
                }
            }
            Spacer()
            Text(classificacao)
            Spacer()
            Image("tabela-IMC")
                .resizable()
                .scaledToFit()
        }.background(corDeFundo)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
