//
//  RaceLayout.swift
//  IgniteStarter
//
//  Created by Asiel Cabrera on 2/10/25.
//

import Foundation
import Ignite

struct RaceLayout: Layout {
    var body: some HTML {
        HTMLDocument {
            HTMLHead(for: page)
            HTMLBody(for: page)
        }
    }
}
