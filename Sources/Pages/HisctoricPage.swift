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
    var title = "Histories"
    
    var body: some HTML {
        Grid {
            Text("Histories")
                .font(.title1)
            
        }
        .horizontalAlignment(.leading)
        
        Grid {
            ForEach(content.typed("Historic")) { content in
                ContentPreview(for: content)
                    .width(3)
                    .margin(.bottom)
            }
        }
    }
}
