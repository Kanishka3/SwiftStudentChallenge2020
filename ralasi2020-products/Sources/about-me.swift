import SwiftUI
import UIKit 


/// the view which shows about user
public struct AboutScreen: View {
   
   public init(){}
    
     public var body: some View {
 
        VStack {
        HStack(alignment: .center, spacing: 20){

            Image(uiImage: #imageLiteral(resourceName: "my-pic.png")).resizable()
            .cornerRadius(15)
                .frame(width: 240, height: 285, alignment: .trailing)
        
            VStack(alignment: .center){

                         VStack(alignment: .leading, spacing: 15) {
                         Text("👋🏼 I'm Kanishka")
                             .ConfigureLabel(fontSize: 20, weight: .bold, design: nil, color: .black)
                         Text("I'm 16. I am from 🇮🇳. And I ❤️ Swift. Also, I am WWDC19 scholar. I'm high school student")
                             .ConfigureLabel(fontSize: 20, weight: .regular, design: nil, color: .black)
                             .padding(25)
                     

                     }}
            }
   
              
        Text("Note: I hope that next time you see me, I would be wearing WWDC20 jacket and pins 🤪")
                                
                                 .ConfigureLabel(fontSize: 16, weight: .thin, design: .rounded, color: .gray)
                              .frame(width: 270, height: 240, alignment: .center)
        
            }
        
    }}
