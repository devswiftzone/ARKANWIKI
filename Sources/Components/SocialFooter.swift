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
        
        // Footer
        //        Footer {
        //            Group {
        //                Text("Síguenos en:")
        //                    .font(.body)
        //
        //                Link("Twitter", target: "https://twitter.com/arkaniamagia")
        //                    .linkStyle(.button)
        //                    .margin(.trailing, .small)
        //
        //                Link("Discord", target: "https://discord.gg/arkaniamagia")
        //                    .linkStyle(.button)
        //            }
        //            .margin(.bottom, .medium)
        //
        //            Text("© 2025 Archivos de Arkania. Todos los derechos reservados.")
        //                .font(.small)
        //        }
        //        .backgroundColor(.indigo)
        //        .padding(.vertical, .large)
        
        Text {
            ForEach(zip(icons, urlStrings)) { (icon, urlString) in
                Link(icon, target: urlString)
                    .role(.secondary)
                    .target(.blank)
                    .relationship(.noOpener, .noReferrer)
                    .margin(.trailing, 20)
            }
        }
        .horizontalAlignment(.center)
        .margin(.top, .xLarge)
        .font(.title2)
    }
}
