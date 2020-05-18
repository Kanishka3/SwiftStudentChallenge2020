import UIKit
import SwiftUI
import PlaygroundSupport


public class ChapterGenericStartScreen : UIViewController{
    
    var majorText : String!
    var buttonText: String!
    var controllerToShow : UIViewController!
    
    var button = UIButton()
    var label = UILabel()
    var backButton = UIButton()
    
    public init(text: String, buttonText: String, controller: UIViewController) {
        super.init(nibName: nil, bundle: nil)
        self.majorText = text
        self.buttonText = buttonText
        self.controllerToShow = controller
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        label.LabelSimplified(color: .label, text:majorText, fontSize: 28, fontWeight: .medium, alignment: .center)
        button.stylizeButton(buttonText)
        button.addTarget(self, action: #selector(ShowController), for: .touchUpInside)
        backButton.setImage(UIImage(systemName: "arrowshape.turn.up.left"), for: .normal)
        backButton.addTarget(self, action: #selector(ToMenu), for: .touchUpInside)
    }
    
    @objc func ToMenu(){

        var controller = UIHostingController(rootView: MenuView())
        controller.preferredContentSize = finalSize
        PlaygroundPage.current.liveView = controller



    }
    
   public override func loadView() {
        super.loadView()
 
        [button, label, backButton].forEach { (item) in self.view.addSubview(item) }
        button.LayoutElements(widthConstant: 150, heightConstant: 45, leftAnchor: nil, leftConstant: nil, rightAnchor: view.rightAnchor, rightConstant: -30, topAnchor: nil, topConstant: nil, bottomAnchor: view.bottomAnchor, bottomConstant: -30)
        label.LayoutElements(widthConstant: nil, heightConstant: nil, leftAnchor: view.leftAnchor, leftConstant: 30, rightAnchor: view.rightAnchor, rightConstant: -30, topAnchor: view.topAnchor, topConstant: 50, bottomAnchor: view.bottomAnchor, bottomConstant: -80)
    backButton.frame = CGRect(x: 120,  y: 100, width: 50, height: 50)
    }
    
    @objc func ShowController(){
      var controller = controllerToShow
       controller!.preferredContentSize = CGSize(width: 700, height: 600)
        PlaygroundPage.current.liveView = controller as! PlaygroundLiveViewable
    }
    
}
