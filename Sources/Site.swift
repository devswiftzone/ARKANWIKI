import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        let site = ArkanWiki()

        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct ArkanWiki: Site {
    
    
    
    var name = "Wiki Arkanica"
    var titleSuffix = " – My Awesome Site"
    var url = URL(static: "https://www.tuwiki.com")
//    var url = URL(static: "https://devswiftzone.github.io/ARKANWIKI/")
    var builtInIconsEnabled = true
    
    var robotsConfiguration = Robots()

    var author = "Asiel Cabrera"

    var homePage = Home()
    var layout = MainLayout()
    var tagLayout = Tags()
    
    var staticLayouts: [any StaticLayout] {
           ContentExamples()
            HisctoricPage()
            MagicPage()
            ObjectsPage()
            PersonPage()
            PlacesPage()
            RacePage()
       }
    
    var contentLayouts: [any ContentLayout] {
            Historic()
            Magic()
            Person()
       }
    
}




