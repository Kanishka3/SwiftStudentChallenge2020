import Foundation
import SwiftUI
import UIKit 

 extension Text {
     
    public func ConfigureLabel(fontSize: CGFloat, weight: Font.Weight,design: Font.Design?, color: Color) -> Text {
           self
        .font(Font.system(size: fontSize, weight: weight, design: design ?? .default))
        .foregroundColor(color)
       }
}



 extension View {
    public func stacked(at position: Int, in total: Int) -> some View {
        let offset = CGFloat(total - position)
        return self.offset(CGSize(width: 0, height: offset * 10))
    }
}
