//
//  Tags.swift
//  IgniteStarter
//
//  Created by Asiel Cabrera on 2/10/25.
//


import Foundation
import Ignite

struct Tags: TagLayout {
    var body: some HTML {

        if let tag {
            Text(tag)
                .font(.title1)
        } else {
            Text("All tags")
                .font(.title1)
        }

        List {
            ForEach(content) { article in
                Link(article)
            }
        }
    }
}