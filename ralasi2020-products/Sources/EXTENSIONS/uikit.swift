import UIKit
import SwiftUI



extension UIButton {
    
    /// Simplifies the front end stuff of UIButton
    /// - Parameter backgroundColor: the background color of button
    /// - Parameter textColor: the color of text of button
    /// - Parameter text: the text of button
    /// - Parameter fontSize: the size of the text
    /// - Parameter weight: the weight of text in the button
    public func ButtonSimplified(backgroundColor: UIColor, textColor: UIColor, text: String, fontSize: CGFloat, weight: UIFont.Weight?){
        self.backgroundColor = backgroundColor
        self.setTitleColor(textColor, for: .normal)
        switch weight {
        case nil:
            self.titleLabel!.font = UIFont.systemFont(ofSize: fontSize, weight: .regular)
            return
        default:
            self.titleLabel!.font = UIFont.systemFont(ofSize: fontSize, weight: weight!)
        }
        self.setTitle(text, for: .normal)
    }
    
    /// makes the button as the default the button used through out the app
    /// - Parameter text: the title of the button
    public func stylizeButton(_ text: String){
        self.ButtonSimplified(backgroundColor : .systemRed, textColor: .white, text: text, fontSize: 23, weight: .medium)
        self.layer.cornerRadius = 8
    }
    

    
      public func SimplifyItem(text: String){
            self.ButtonSimplified(backgroundColor: .blue, textColor: .white, text: text, fontSize: 24, weight: .medium)
        }
    
    public func SimplifyItem(text: String, backgroundColor: UIColor){
               self.ButtonSimplified(backgroundColor: backgroundColor, textColor: .white, text: text, fontSize: 24, weight: .medium)
           }
      
   

     
}


extension UIView {
    public func shake() {
          let animation = CAKeyframeAnimation(keyPath: "transform.translation.x")
          animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.linear)
          animation.duration = 0.6
          animation.values = [-20.0, 20.0, -20.0, 20.0, -10.0, 10.0, -5.0, 5.0, 0.0 ]
          layer.add(animation, forKey: "shake")
      }
}

extension UIImageView{
    
    /// simply stylises the image
    /// - Parameters:
    ///   - image: the image to embed in the image view
    ///   - contentMode: the content mode of the image view
    public func ImageViewSimplified(image: UIImage, contentMode: UIView.ContentMode){
        self.image = image
        self.contentMode = contentMode
    }
}


public extension UIView {
    
    /// Employs multiple constraints at once
   public func LayoutElements(widthConstant: CGFloat?, heightConstant: CGFloat?, leftAnchor: NSLayoutAnchor<NSLayoutXAxisAnchor>?, leftConstant:CGFloat?, rightAnchor: NSLayoutAnchor<NSLayoutXAxisAnchor>?, rightConstant: CGFloat?, topAnchor: NSLayoutAnchor<NSLayoutYAxisAnchor>?, topConstant: CGFloat?, bottomAnchor: NSLayoutAnchor<NSLayoutYAxisAnchor>?, bottomConstant: CGFloat?){
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        if widthConstant != nil {self.widthAnchor.constraint(equalToConstant: widthConstant!).isActive = true}
        if heightConstant != nil { self.heightAnchor.constraint(equalToConstant: heightConstant!).isActive = true}
        
    
        if leftAnchor != nil {self.leftAnchor.constraint(equalTo: leftAnchor!, constant: leftConstant ?? 0).isActive = true}
        if rightAnchor != nil {self.rightAnchor.constraint(equalTo: rightAnchor!, constant: rightConstant ?? 0).isActive = true}
        if topAnchor != nil {self.topAnchor.constraint(equalTo: topAnchor!, constant: topConstant ?? 0).isActive = true}
        if bottomAnchor != nil {self.bottomAnchor.constraint(equalTo: bottomAnchor!, constant: bottomConstant ?? 0).isActive = true}
    }
    
     public func CenterLayout(centerX: NSLayoutAnchor<NSLayoutXAxisAnchor>?, centerY: NSLayoutAnchor<NSLayoutYAxisAnchor>?){
        if centerX != nil { self.centerXAnchor.constraint(equalTo: centerX  as! NSLayoutAnchor<NSLayoutXAxisAnchor>).isActive = true }
        if centerY != nil { self.centerYAnchor.constraint(equalTo: centerY as! NSLayoutAnchor<NSLayoutYAxisAnchor>).isActive = true }
    }
    
 
        /// Adds multiple views at once
       public func addSubviews(_ items: [UIView]){
            items.forEach { (item) in self.addSubview(item) }
        
    }
    
    
}




public extension UILabel {
    
    
    /// Stylises the label in one function call
    public  func LabelSimplified(color: UIColor?, text: String, fontSize: CGFloat, fontWeight: UIFont.Weight, alignment: NSTextAlignment){
        self.numberOfLines = -1
        self.font = UIFont.systemFont(ofSize: fontSize, weight: fontWeight)
         self.text = text
        self.textColor = color
        self.textAlignment = alignment
    }
}



