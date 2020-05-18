import UIKit


/// The button used through out  the schedule screen
public class OptionButton: UIButton {
    
    var image : UIImage!

    var text: String!
    
    var value : Bool!
    
    var label =  UILabel()
    
    var buttonImage : UIImageView!
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
   public convenience init(image: UIImage, text: String, value: Bool) {
        self.init()
           self.image = image
           self.text = text
        self.value = value
       }
       
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    public func ConfigureContent(text: String, image: UIImage, value: Bool, selector: Selector, controller: UIViewController){
        
         buttonImage = UIImageView(image: image)
        buttonImage.contentMode = .scaleAspectFit
        label.LabelSimplified(color: .black, text: text, fontSize: 20, fontWeight: .regular, alignment: .center)
        
    
        [label,buttonImage].forEach { (item) in addSubview(item) }
        
 label.LayoutElements(widthConstant: nil, heightConstant: 60, leftAnchor: leftAnchor, leftConstant: 15, rightAnchor: rightAnchor, rightConstant: -15, topAnchor: nil, topConstant: nil, bottomAnchor: bottomAnchor, bottomConstant: -15)
        
        buttonImage.LayoutElements(widthConstant: nil, heightConstant: nil, leftAnchor: leftAnchor, leftConstant: 23, rightAnchor: rightAnchor, rightConstant: -23, topAnchor: topAnchor, topConstant: 15, bottomAnchor: label.topAnchor, bottomConstant: -20)
        
       
        
        label.LabelSimplified(color: .black, text: text, fontSize: 20, fontWeight: .medium, alignment: .center)
        
        
        layer.cornerRadius = 10
        layer.borderColor = UIColor.init(red: 50/255, green: 50/255, blue: 50/255, alpha: 0.6).cgColor
        layer.borderWidth = 2
        self.addTarget(controller, action: selector, for: .touchUpInside)
                 
 
        
    }
    
  
}
