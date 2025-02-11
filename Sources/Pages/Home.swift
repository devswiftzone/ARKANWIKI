//
//  Home 2.swift
//  IgniteStarter
//
//  Created by Asiel Cabrera on 2/10/25.
//


import Foundation
import Ignite

struct Home: StaticLayout {
    var title = "Home"
    
    @Environment(\.content) var content

    var body: some HTML {
        Group {
            Text("Archivos de Arkania")
                .font(.title1)
                .foregroundStyle(.white)
            
            Text("Un universo donde la magia es ciencia y las sombras guardan secretos ancestrales.")
                .font(.lead)
                .foregroundStyle(.white.opacity(0.9))
        }
        .padding(.top, .xLarge)
        .padding(.bottom, .large)
        .background(image: "/images/hero-bg.jpg", contentMode: .fill, position: .center)
        
        
//        Group {
//            Text("Histories")
//                .font(.title1)
//            List {
//                ForEach(content.typed("Historic")) { content in
//                    Link(content)
//                }
//            }
//        }
        
        
        // Top Stories Carousel
                    Section {
                        Text("Historias Destacadas")
                            .font(.title2)
                            .margin(.top, .large)
        
   
                            Group {
                                ForEach(content.typed("Historic")) { article in
                                    Card {
                                        Image(article.image!, description: article.imageDescription)
                                            .resizable()
                                            .frame(height: 200)
                                        Text(article.title)
                                            .font(.body)
                                            .margin(.top, .small)
                                        Link("Leer más", target: article.path)
                                            .linkStyle(.button)
                                    }
                                    .frame(width: 300)
                                }
                            }
                            .horizontalAlignment(.center)
                        }

        
        // Category Sections
        //            for category in ["Magia", "Razas", "Lugares", "Personajes"] {
        //                Section {
        //                    Text(category)
        //                        .font(.title3)
        //                        .margin(.top, .large)
        //
        //                    Grid(columns: 3) {
        //                        for article in getLatestArticles(from: category.lowercased(), count: 3) {
        //                            PageLink(article.title, target: article.url)
        //                                .cardStyle()
        //                        }
        //                    }
        //                }
        //            }
        //        }
        //        .padding(.horizontal, 15)
        
    }
}
