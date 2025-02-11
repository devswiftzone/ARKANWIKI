//
//  SocialFooter.swift
//  IgniteStarter
//
//  Created by Asiel Cabrera on 2/10/25.
//


import Foundation
import Ignite

struct SocialFooter: HTML {
    let icons = [
        Image(systemName: "github"),
        Image(systemName: "twitter"),
        Image(systemName: "youtube"),
        Image(systemName: "mastodon")
    ]

    let urlStrings = [
        "https://github.com/twostraws",
        "https://twitter.com/twostraws",
        "https://youtube.com/@twostraws",
        "https://mastodon.social/@twostraws"
    ]

    var body: some HTML {
        Group {
            Text {
                ForEach(zip(icons, urlStrings)) { (icon, urlString) in
                    Link(icon, target: urlString)
                        .role(.secondary)
                        .target(.blank)
                        .relationship(.noOpener, .noReferrer)
                        .margin(.trailing, 20)
                }
            }
            
            Text("© 2025 Archivos de Arkania. Todos los derechos reservados.")

        }
        .horizontalAlignment(.center)
        .margin(.top, .xLarge)
        .font(.title2)
    }
}
