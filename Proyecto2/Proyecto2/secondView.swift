//
//  secondView.swift
//  Proyecto2
//
//  Created by Diego Borrallo Herrero on 3/10/23.
//

import SwiftUI

struct secondView : View{
    var body : some View{
        TabView(selection: .constant(1)){
            Text("Tab Content 1").tabItem{Text("Tab Label 1").tag(1)}
            Text("Tab Content 2").tabItem{Text("Tab Label 2").tag(2)}
        }
    }
}
