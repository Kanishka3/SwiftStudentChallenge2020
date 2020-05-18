import SwiftUI
import UIKit
import PlaygroundSupport 


public var bgColors : [Color] = [  .red, .blue, .purple, .orange, .yellow, .gray, .black, .yellow, .green, .purple, .orange, .blue]



public var activitiestoDo: [EmojiData]  = [
EmojiData(emoji: "🎨", title: "Unleash the artist behind you"),
EmojiData(emoji: "📞", title: "Call your gossip pal"),
EmojiData(emoji: "🦄", title: "Sit back and reflect"),
EmojiData(emoji: "🍜", title: "Try a new recipe"),
EmojiData(emoji: "🗣", title: "Talk to people online"),
    EmojiData(emoji: "🐕", title: "Get a pet"),
    EmojiData(emoji: "🧗🏼‍♀️", title: "STAY BUSY")
]


 
public struct Quarantine : View {
      @State var num = activitiestoDo.count - 1
    public init(){}
    public var body : some View {
        VStack{
            ZStack {
                  ForEach(0..<activitiestoDo.count, id: \.self) { index in
                    EmojiText(activitiestoDo[self.num])
                    .stacked(at: index, in: activitiestoDo.count)
                    .frame(width: 200, height: 250, alignment: .center)
                    .background(bgColors[self.num])
                        .animation(.easeInOut(duration: 1.0))
                                        .transition(.opacity)
                    .cornerRadius(10)
                }}
    
        Button(
            action: {
                                
                switch self.num{
                case 7,6,5,4,3,2,1 :  self.num = self.num - 1
                default:    var c = UIHostingController(rootView: WinningScreen())
                                 c.preferredContentSize = finalSize
                                 PlaygroundPage.current.liveView = c
                }
        
            },
            label: {
                Text("Swipe Card")
                    .ConfigureLabel(fontSize: 20, weight: .regular, design: .rounded, color: .red)
                   
        }
        )
        }}}


