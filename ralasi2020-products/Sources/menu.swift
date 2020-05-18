import UIKit
import SwiftUI
import Foundation
import PlaygroundSupport 

public struct EmojiText : View {
    
    var data : EmojiData!
    public init(_ item : EmojiData){
        self.data = item
    }
    
   public var body: some View{
        VStack(alignment: .center, spacing: 20){
             Text(data.emoji)
                .ConfigureLabel(fontSize: 70, weight: .heavy,design: .default, color: .black)
            Text(data.title)
             .ConfigureLabel(fontSize: 20, weight: .medium,design: .default, color: .white)
        }
       
        
    }
}

public struct EmojiData{

   public var emoji: String!
     public var title: String!
    public init(emoji: String, title: String){
        self.emoji = emoji
        self.title = title
    }
    
}


public struct MenuView : View {
   
    public init(){}
   
    public var body : some View {
        
        HStack(alignment: .center, spacing: 27) {
            
            
            Button(action: {
                var x = ChapterGenericStartScreen(text: "Fill in few blanks to few types of mental health issues", buttonText: "GO On", controller: LonelinessSigns())
                x.preferredContentSize = finalSize
                PlaygroundPage.current.liveView = x
            },
                   label: {
                    EmojiText(EmojiData(emoji: "🥺", title: "Explore types"))
            })
                .frame(width: 190, height: 230, alignment: .center)
                .background(Color.red)
                .cornerRadius(20)
            
 Button(action: {
   var x = ChapterGenericStartScreen(text: "Help a person with depressed mindset set a healthy routine ", buttonText: "Start", controller: SetARoutine())
                         x.preferredContentSize = finalSize
                         PlaygroundPage.current.liveView = x
    },
        label: {
       EmojiText(EmojiData(emoji: "📅", title: "Schedule a person"))
 })
       .frame(width: 190, height: 230, alignment: .center)
    .background(Color.green)
    .cornerRadius(20)
            
 
             Button(action: {
               var x = ChapterGenericStartScreen(text: "Some quarantine activities to feel less lonely and sad", buttonText: "View", controller: UIHostingController(rootView: Quarantine()))
                x.preferredContentSize = finalSize
                PlaygroundPage.current.liveView = x
             }, label: {
                   EmojiText(EmojiData(emoji: "🏠", title: "#Quarantined"))
                })     .frame(width: 190, height: 230, alignment: .center)
                                 .background(Color.blue)
                                 .cornerRadius(20)
        }
    }
}
