import Foundation
import UIKit
import SwiftUI
import PlaygroundSupport 

public struct Facetime : View {
    public init(){}
    
       public var body: some View{
        HStack(alignment: .center, spacing: 10) {
            Spacer(minLength: 10)
            
         Text("🌏 ")
            .ConfigureLabel(fontSize: 40, weight: .medium, design: nil, color: .black)
            
            
            TextStack(headerText: "World", contentText: "The world needs you", color: .white)
            
            Spacer(minLength: 20)
            
            VStack(alignment: .center) {
                Spacer(minLength: 20)
           Button(action: {
              AudioPlayer.instance.StopThePlayer()
                           let controller = UIHostingController(rootView: BlinkView())
                             controller.preferredContentSize = finalSize
                             PlaygroundPage.current.liveView = controller
           }, label: {
        Text("Accept")
            .ConfigureLabel(fontSize: 18, weight: .regular, design: .default, color: .green)
             .padding(20)
          
           }) .frame(width: 100, height: 30, alignment: .center)
            
           
          
            Button(action: {
   
    let controller = UIHostingController(rootView: BlinkView())
    controller.preferredContentSize = CGSize(width: 700, height: 600)
    PlaygroundPage.current.liveView = controller
                AudioPlayer.instance.StopThePlayer()

                
                      }, label: {
                        Text("Solve world problems")
                            .ConfigureLabel(fontSize: 14, weight: .regular, design: .default, color: .red)
                            .multilineTextAlignment(.center)
                        .padding(15)
                      })
               
            .frame(width: 120, height: 80, alignment: .trailing)
    }
        }}}
public struct FacetimeView : View {
    public init(){}
    public var body: some View {
        Facetime()
            .frame(width: 450, height: 110, alignment: .center)
            .background(Color.init(red: 50/255, green: 50/255, blue: 50/255))
        .cornerRadius(10)
            .onAppear{
                AudioPlayer.instance.PlaySound(sound: "apple-opening", type: "mp3")
        }
    }
}
