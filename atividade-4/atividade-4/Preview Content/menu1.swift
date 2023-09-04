//
//  menu1.swift
//  atividade-4
//
//  Created by Student04 on 04/09/23.
//

import SwiftUI

struct menu1: View {
    var body: some View {
        List(1...50, id:\.self){
            Text("sujeito \($0)")
        }
    }
}

struct menu1_Previews: PreviewProvider {
    static var previews: some View {
        menu1()
    }
}
