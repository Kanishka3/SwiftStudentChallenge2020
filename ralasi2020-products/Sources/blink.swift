import UIKit
import Combine
import SwiftUI
import PlaygroundSupport 


public var finalSize : CGSize = CGSize(width: 700, height: 600)


/// Datastructure for configuring to blink view
public struct WorkItem {
    public var bgColor : Color!
    public var text: String!
    public init(bgColor: Color, text: String){
        self.bgColor = bgColor
        self.text = text
    }
}


/// collection of work items for blink view
public var BlinkViewItems : [WorkItem] = [ WorkItem(bgColor: .red, text: ""),
                                           WorkItem(bgColor: .blue, text: "1 in 5 teen has or will develop a mental illness in their lifetime"),
                                            
                                           WorkItem(bgColor: .yellow, text: "YOU ARE NOT ALONE"),

                                           WorkItem(bgColor: .orange, text: "Your mental health issue is not a MALFUNCTION, it's a SIGNAL"),
                                           
                                        WorkItem(bgColor: .orange, text: "a signal that you're a human being with UNMET NEEDS")]



 public class TextSwift : ObservableObject {
     @Published public var currentText: WorkItem = WorkItem(bgColor: .red, text: "Mental health is a serious problem among adolescents")
      var num = 0
   
    public init(){
             Timer.scheduledTimer(withTimeInterval: 3, repeats: true) { (timer) in
                 self.currentText = BlinkViewItems[self.num]
                 self.UpdateText()
             }
         
     }
     @objc private func UpdateText(){
         if num < BlinkViewItems.count - 1 {
         num = num + 1
         self.currentText = BlinkViewItems[num]
         }}
 }

  



/// the slideshow view show changes the text
public struct BlinkView : View {
public init(){}

    @ObservedObject public var texts = TextSwift()
    public var body: some View{
        Text(texts.currentText.text)
            .ConfigureLabel(fontSize: 34, weight: .bold, design: .default, color: .white)
            .frame(width: finalSize.width, height: finalSize.height, alignment: .center)
        .background(texts.currentText.bgColor)
            .onAppear {
                Timer.scheduledTimer(withTimeInterval: 15, repeats: false) { (timer) in
                     var c = UIHostingController(rootView: MenuView())
                    c.preferredContentSize = finalSize
                    PlaygroundPage.current.liveView = c
                    print("Start with \"Explore types\"")
                }
        }
        
    }

}
