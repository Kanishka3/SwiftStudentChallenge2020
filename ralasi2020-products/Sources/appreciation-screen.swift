import UIKit
import SwiftUI
import PlaygroundSupport

/// The view to appreciate the user for understanding 
public struct WinningScreen: View {

      public init(){}
      public var body: some View {
          
          VStack(alignment: .center, spacing: 50){
              VStack(alignment: .center, spacing: 25){
            Image(uiImage: #imageLiteral(resourceName: "success-memoji.png"))  .resizable()
                               .frame(width: 230, height:355, alignment: .center)
                              
                         
                      Text("Kudos! You are the greatest 🎉")
                        .ConfigureLabel(fontSize: 27, weight: .heavy, design: .rounded, color: .black)
                
                
                    Text("Now, you have aware about mental health issues and understood its solution")
                                .ConfigureLabel(fontSize: 23, weight: .light, design: nil, color: .gray)
                                .lineLimit(3)
                                .padding(10)
                                }.onAppear {
                                    AudioPlayer.instance.PlaySound(sound: "applause", type: "wav")}
            
              VStack(alignment: .trailing, spacing: 0){
                  Button(
                      action: {
      var controller = UIHostingController(rootView: AboutScreen())
                          controller.preferredContentSize = finalSize
                          PlaygroundPage.current.liveView =  controller
                      },
                      label: { Text("About Creator")
                          .ConfigureLabel(fontSize: 24, weight: .medium, design: nil, color: .white)
                          .frame(width: 180, height: 40, alignment: .center)
                          .background(Color.red)
                  }
                  ).cornerRadius(8)
              }
          }}}

