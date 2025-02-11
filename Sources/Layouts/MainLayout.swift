//
//  MainLayout 2.swift
//  IgniteStarter
//
//  Created by Asiel Cabrera on 2/10/25.
//


import Foundation
import Ignite


//struct MainLayout: Layout {
//    var body: some HTML {
//        HTMLDocument {
//            HTMLHead(for: page)
//
//            HTMLBody {
//                NavBar()
//
//                Section(page.body)
//
//                Section {
//                    SocialFooter()
//                    IgniteFooter()
//                }
//            }
//            .padding(.vertical, 80)
//        }
//    }
//}

struct MainLayout: Layout {
    var body: some HTML {
        HTMLDocument {
            HTMLHead(for: page)
            
            HTMLBody {
                
                NavBar()

                Group {
                    
                    Section(page.body)
                    
                    Section {
                        SocialFooter()
                    }
                    
                }
                .horizontalAlignment(.center)
            }
        }
    }
}

