//
//  Charview.swift
//  atividade-9
//
//  Created by Student04 on 13/09/23.
//

import SwiftUI

struct CharView: View {
    @State var person: HaPo
    var body: some View {
        VStack{
            AsyncImage(url: URL(string: person.image!),
                       content: { image in
                image.resizable().scaledToFill()
            },
                       placeholder: {
                ProgressView()
            }).frame(width: 200, height: 300).cornerRadius(20).padding()
            ScrollView(showsIndicators: false) {
                HStack {
                    Text("Nome alternativos:")
                    Spacer()
                    VStack {
                        ForEach(person.alternate_names!, id: \.self) { name in
                            Text(name)
                        }
                    }
                }.padding(5).background(Color(.lightGray)).cornerRadius(15)
                HStack{
                    Text("Espécie:")
                    Spacer()
                    Text(person.name!)
                }.padding(5).background(Color(.lightGray)).cornerRadius(15)
                HStack {
                    Text("Genênero:")
                    Spacer()
                    Text(person.gender!)
                }.padding(5).background(Color(.lightGray)).cornerRadius(15)
                HStack {
                    Text("Casa:")
                    Spacer()
                    Text(person.house!)
                }.padding(5).background(Color(.lightGray)).cornerRadius(15)
                HStack {
                    Text("Nascimento:")
                    Spacer()
                    Text(person.dateOfBirth!)
                }.padding(5).background(Color(.lightGray)).cornerRadius(15)
                HStack {
                    Text("Bruxo:")
                    Spacer()
                    if(person.wizard!){
                        Text("True")
                    } else {
                        Text("False")
                    }
                }.padding(5).background(Color(.lightGray)).cornerRadius(15)
                HStack {
                    Text("Ancestral:")
                    Spacer()
                    Text(person.ancestry!)
                }.padding(5).background(Color(.lightGray)).cornerRadius(15)
            }.padding()
        }
    }
}

struct CharView_Previews: PreviewProvider {
    static var previews: some View {
        CharView(person: HaPo(id: "9e3f7ce4-b9a7-4244-b709-dae5c1f1d4a8", name: "Harry Potter", alternate_names: ["The Boy Who Lived","The Chosen One"], species: "human", gender: "male", house: "Griffindor", dateOfBirth: "31-07-1980", yearOfBirth: 1980, wizard: true, ancestry: "half-blood", eyeColour: "green", hairColour: "black", patronus: "stag", hogwartsStudent: true, hogwartsStaff: false, actor: "Daniel Radcliffe", alternate_actors: [], alive: true, image: "https://ik.imagekit.io/hpapi/harry.jpg"))
    }
}

