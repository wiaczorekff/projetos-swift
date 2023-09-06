//
//  ContentView.swift
//  atividade-8
//
//  Created by Student04 on 06/09/23.
//

import SwiftUI
import MapKit
import Foundation

struct ContentView: View {
    struct Location: Identifiable{
        let id = UUID()
        let name: String
        let coordinate: CLLocationCoordinate2D
        let flag: String
        let description: String
    }
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 40.121835, longitude: -95.483690), span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40))
    let  locations = [
        Location(name: "EUA",
                 coordinate: CLLocationCoordinate2D(latitude: 40.121835, longitude: -95.483690),
                 flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Flag_of_the_United_States.svg/250px-Flag_of_the_United_States.svg.png",
                 description: "Os Estados Unidos da América (EUA; em inglês: United States of America — USA; pronunciado: [juːˈnaɪ.təd ˈsteɪʦ əv əˈmɛ.ɹɪ.kə]), ou simplesmente Estados Unidos ou América,[11] são uma república constitucional federal composta por 50 estados e um distrito federal. A maior parte do país situa-se na região central da América do Norte, formada por 48 estados e o Distrito de Colúmbia, o distrito federal da capital. Banhado pelos oceanos Pacífico e Atlântico, faz fronteira com o Canadá ao norte e com o México ao sul. O estado do Alasca está no noroeste do continente, fazendo fronteira com o Canadá no leste e com a Rússia a oeste, através do estreito de Bering. O estado do Havaí é um arquipélago no Pacífico Central. O país também possui vários outros territórios no Caribe e no Oceano Pacífico. Com 9,37 milhões de km² de área e uma população de mais de 330 milhões de habitantes, o país é o quarto maior em área total, o quinto maior em área contígua e o terceiro em população. Os Estados Unidos são uma das nações mais multiculturais e etnicamente diversas do mundo, produto da forte imigração vinda de muitos países.[12] Sua geografia e sistemas climáticos também são extremamente diversificados, com desertos, planícies, florestas e montanhas que abrigam uma grande variedade de espécies."),
        Location(name: "Brasil", coordinate: CLLocationCoordinate2D(latitude: -23.583688, longitude: -46.714772), flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Flag_of_Brazil.svg/250px-Flag_of_Brazil.svg.png", description: "Brasil (localmente [bɾaˈziw][b]), oficialmente República Federativa do Brasil (? escutar),[7] é o maior país da América do Sul e da região da América Latina, sendo o quinto maior do mundo em área territorial (equivalente a 47,3% do território sul-americano), com 8 510 417,771 km²,[1][8][9] e o sétimo em população[10][11] (com 203 milhões de habitantes, em agosto de 2022).[12] É o único país na América onde se fala majoritariamente a língua portuguesa e o maior país lusófono do planeta,[13] além de ser uma das nações mais multiculturais e etnicamente diversas, em decorrência da forte imigração oriunda de variados locais do mundo. Sua atual Constituição, promulgada em 1988, concebe o Brasil como uma república federativa presidencialista,[7] formada pela união dos 26 estados, do Distrito Federal e dos 5 570 municípios."),
        
        Location(name: "Polônia", coordinate: CLLocationCoordinate2D(latitude: 52.183669, longitude: 21.039173), flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/Flag_of_Poland.svg/250px-Flag_of_Poland.svg.png",description: "Polónia (português europeu) ou Polônia (português brasileiro) (em polonês/polaco: Polska, pronunciado: [ˈpɔlska] (Sobre este somescutar?·info)), oficialmente República da Polónia (em polonês/polaco: Rzeczpospolita Polska, pronunciado: [ʐɛt͡ʂpɔˈspɔʎit̪a ˈpɔlska] (Sobre este somescutar?·info)), é um país da Europa Central que tem fronteiras comuns com a Alemanha a oeste; com a Chéquia e a Eslováquia ao sul; com a Ucrânia e a Bielorrússia a leste; com o Mar Báltico, o Oblast de Kaliningrado (um exclave russo) e a Lituânia ao norte. A área total da nação é 312 679 quilômetros quadrados,[5] o que a torna o 69.º maior país do mundo e o 9.º maior da Europa. Com uma população de mais de 38,5 milhões de pessoas,[5] a Polônia é o 34.º país mais populoso do mundo,[6] o sexto membro mais populoso da União Europeia (UE) e o Estado pós-comunista mais populoso da UE. A Polônia é um Estado unitário dividido em 16 voivodias (subdivisões administrativas)."),
        
    ]
    
    @State private var sheetView = false
    @State private var pais = "Estados Unidos"
    var body: some View {
        VStack {
            Text("Mapa").font(.largeTitle)
            Text(pais)
            Map(coordinateRegion: $region, annotationItems: locations) { location in
                MapAnnotation(coordinate: location.coordinate) {
                    Circle().frame(width: 30).onTapGesture {
                        sheetView.toggle()
                    }.sheet(isPresented: $sheetView) {
                        Text(location.name)
                        AsyncImage(url: URL(string: location.flag), scale: 5)
                        Text(location.description)
                        
                    }
                }
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack{
                    ForEach(locations) { location in
                        Button(location.name) {
                            pais = location.name
                            region = MKCoordinateRegion(center: location.coordinate, span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40))
                            
                        }
                    }
                }.padding()
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
