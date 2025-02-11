//
//  NavBar.swift
//  IgniteStarter
//
//  Created by Asiel Cabrera on 2/10/25.
//

import Foundation
import Ignite

struct NavBar: HTML {
    var body: some HTML {
        NavigationBar(logo: "Archivos de Arkania") {
            Link("Magia", target: MagicPage())
            Link("Razas", target: RacePage())
            Link("Lugares", target: PlacesPage())
            Link("Historia", target: HisctoricPage())
            Link("Personajes", target: PersonPage())
        }
        .navigationItemAlignment(.trailing)
        .navigationBarStyle(.dark)
        .background(.indigo)
    }
}
