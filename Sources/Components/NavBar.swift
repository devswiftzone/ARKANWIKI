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
//        NavigationBar(logo: "My Awesome Site") {
//            Link("History", target: HisctoricPage())
//                .linkStyle(.button)
//            
//            Link("Race", target: RacePage())
//            Link("Person", target: PersonPage())
//        }
//        .navigationItemAlignment(.trailing)
//        .navigationBarStyle(.light)
//        .background(.antiqueWhite)
        
        NavigationBar(logo: "Archivos de Arkania") {
            Link("Magia", target: "/magia")
            Link("Razas", target: "/razas")
            Link("Lugares", target: "/lugares")
            Link("Historia", target: "/historia")
            Link("Personajes", target: "/personajes")
        }
        .navigationItemAlignment(.trailing)
        .navigationBarStyle(.dark)
        .background(.indigo)
    }
}
