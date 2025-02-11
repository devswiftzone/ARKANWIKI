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
    var url = URL(static: "https://devswiftzone.github.io/ARKANWIKI/")
    var builtInIconsEnabled = true
    
    var robotsConfiguration = Robots()

    var author = "Asiel Cabrera"

    var homePage = Home()
    var layout = MainLayout()
    var tagLayout = Tags()
    
    var staticLayouts: [any StaticLayout] {
           ContentExamples()
            HisctoricPage()
            PersonPage()
            RacePage()
//           NavigationExamples()
//           TextExamples()
//           StylingExamples()
//           ThemeExamples()
//           CustomModifierExamples()
//
//           AccordionExamples()
//           AlertExamples()
//           BadgeExamples()
//           ButtonExamples()
//           CardExamples()
//           CarouselExamples()
//           CodeExamples()
//           DropdownExamples()
//           EmbedExamples()
//           ImageExamples()
//           IncludeExamples()
//           LinkExamples()
//           ListExamples()
//           ModalExamples()
//           QuoteExamples()
//           TableExamples()
       }
    
    var contentLayouts: [any ContentLayout] {
            Story()
            Historic()
//           CustomStory()
       }
    
    func getURL() -> String {
        guard let pagesURL = ProcessInfo.processInfo.environment["PAGES_URL"] else {
            fatalError("NO PAGES URL CONFIGURED")
        }
        
        return pagesURL
    }
}




