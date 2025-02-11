//
//  HisctoricPage.swift
//  IgniteStarter
//
//  Created by Asiel Cabrera on 2/10/25.
//

import Foundation
import Ignite

struct HisctoricPage: StaticLayout {
    @Environment(\.content) var content
    var title = "HisctoricPage"
    
    var body: some HTML {
        Text("HisctoricPage")
            .font(.title1)
        
        List {
            ForEach(content.all) { content in
                Link(content)
            }
        }
    }
}
