import UIKit


public class AlertView : UIView{
    
    var text : String!
    var label = UILabel()
    public var button = UIButton()
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public init(text: String, action: Selector, controller: UIViewController) {
        self.init()
        self.ConfigureContent(text: text, action: action, controller: controller)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    public func ConfigureContent(text: String, action: Selector, controller: UIViewController){
        label.LabelSimplified(color: .white, text: text, fontSize: 24, fontWeight: .medium, alignment: .center)
        backgroundColor = UIColor(red: 50/255, green: 50/255, blue: 50/255, alpha: 0.8)
        layer.cornerRadius = 12
        button.addTarget(controller, action: action, for: .touchUpInside)
        button.ButtonSimplified(backgroundColor: .red, textColor: .white, text: "Next", fontSize: 20, weight: .medium)
        label.LabelSimplified(color: .white, text: text, fontSize: 20, fontWeight: .regular, alignment: .center)
        [label, button].forEach { (item) in addSubview(item) }
        label.LayoutElements(widthConstant: nil, heightConstant: nil, leftAnchor: leftAnchor, leftConstant: 18, rightAnchor: rightAnchor, rightConstant: -18, topAnchor: topAnchor, topConstant: 18, bottomAnchor: button.topAnchor, bottomConstant: -18)
        button.LayoutElements(widthConstant: 120, heightConstant: 40, leftAnchor: nil, leftConstant: nil, rightAnchor: rightAnchor, rightConstant: -20, topAnchor: nil, topConstant: nil, bottomAnchor: bottomAnchor, bottomConstant: -20)
    }
}
