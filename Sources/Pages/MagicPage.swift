//
//  MagicPage.swift
//  IgniteStarter
//
//  Created by Asiel Cabrera on 2/10/25.
//

import Foundation
import Ignite

struct MagicPage: StaticLayout {
    
    var title = "MagicPage"
    
    @Environment(\.content) var content

    var body: some HTML {
        Grid {
            Text("Magic")
                .font(.title1)
            
        }
        .horizontalAlignment(.leading)
        
        Grid {
            ForEach(content.typed("Magic")) { content in
                ContentPreview(for: content)
                    .width(3)
                    .margin(.bottom)
            }
        }
    }
}
