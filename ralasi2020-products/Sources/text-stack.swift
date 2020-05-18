import SwiftUI


/// the swiftui view to show couple of label together
public struct TextStack : View {
    
    var headerText: String!
    var contentText: String!
    
    var color : Color!
    
    public init(headerText: String, contentText: String, color: Color){
         self.headerText = headerText
              self.contentText = contentText
        self.color = color
    }
    
    
    public var body: some View {
        VStack(alignment: .leading, spacing: 15) {
        Text(headerText)
            .ConfigureLabel(fontSize: 20, weight: .bold, design: nil, color: color)
        Text(contentText)
            .ConfigureLabel(fontSize: 20, weight: .regular, design: nil, color: color)
        }
    }
}

