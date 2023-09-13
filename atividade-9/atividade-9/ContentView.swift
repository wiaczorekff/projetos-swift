//
//  ContentView.swift
//  atividade-9
//
//  Created by Student04 on 13/09/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                AsyncImage(url: URL(string: "https://img.ibxk.com.br/2021/04/19/19165615261383.jpg?ims=704x"), content: { image in
                    image.resizable().aspectRatio(contentMode: .fill)
                }, placeholder: {
                    ProgressView()
                }).ignoresSafeArea().frame(width: 250, height: 250)
                ScrollView {
                    ForEach(viewModel.chars) { p in
                        NavigationLink(destination: CharView(person: p)) {
                            HStack {
                                AsyncImage(url: URL(string: p.image!),
                                           content: { image in
                                    image.resizable().scaledToFill()
                                },
                                           placeholder: {
                                    ProgressView()
                                }).frame(width: 90, height: 90).background(Color.gray).clipShape(Circle()).padding(10)
                                Text(p.name!).foregroundColor(.black)
                                Spacer()
                            }
                        }
                    }
                }
            }.foregroundColor(.white).ignoresSafeArea().background(Color("gri"))
        }.onAppear(){
            viewModel.fetch()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
