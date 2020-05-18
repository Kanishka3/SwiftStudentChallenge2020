import UIKit
import PlaygroundSupport


public class AnxietySigns: UIViewController {
    
    var headTitle = UILabel()
     var answerArea = UIImageView()
    
     var item1 = UIButton()
         var item2 = UIButton()
         var item3 = UIButton()
         var item4 = UIButton()
    
    var nextButton = UIButton()
    
   
    
    var no = 0
    
    public override func loadView() {
        super.loadView()
        
       
    }

    public override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubviews([headTitle, item3, item4, answerArea])
               view.addSubview(item1)
               view.addSubview(item2)
               view.addSubview(nextButton)
        
     
        item1.SimplifyItem(text: "Panic attacks", backgroundColor: .purple)
        item2.SimplifyItem(text:"Reduced concentration", backgroundColor: .purple)
        item3.SimplifyItem(text:"Gets angry easily", backgroundColor: .purple)
        item4.SimplifyItem(text: "Smiling all time", backgroundColor: .purple)
    
    
        nextButton.frame = CGRect(x: 640, y: 540, width: 70, height: 70)
        nextButton.ButtonSimplified(backgroundColor: .clear, textColor: .red, text: "Next", fontSize: 20, weight: .medium)
        
        
        
        nextButton.addTarget(self, action: #selector(NextController), for: .touchUpInside)
        answerArea.backgroundColor = UIColor(red: 50/255, green: 50/255, blue: 50/255, alpha: 1)
        answerArea.layer.cornerRadius = 10
        
        headTitle.LabelSimplified(color: .black, text: "Click the symptoms of anxiety", fontSize: 23, fontWeight: .bold, alignment: .center)
                  
        headTitle.LayoutElements(widthConstant: 500, heightConstant: 40, leftAnchor: view.leftAnchor, leftConstant: 60, rightAnchor: nil, rightConstant: nil, topAnchor: view.topAnchor, topConstant: 70, bottomAnchor: nil, bottomConstant: nil)
                   
    
      
              
            
        item1.frame = CGRect(x: 200, y: 250, width: 350, height: 50)
        item2.frame = CGRect(x: 200, y: 360, width: 350, height: 50)
        item3.frame = CGRect(x: 200, y: 450, width: 350, height: 50)
        item4.frame = CGRect(x: 200, y: 530, width: 350, height: 50)
        answerArea.frame = CGRect(x: 30, y:120, width: 580, height: 80)
        
       item1.tag = 1
               item2.tag = 3
               item3.tag = 2
               item4.tag = 4
        item1.addTarget(self, action: #selector(TargetAnswer(sender:)), for: .touchUpInside)
        
        item2.addTarget(self, action: #selector(TargetAnswer(sender:)), for: .touchUpInside)
        
        item3.addTarget(self, action: #selector(TargetAnswer(sender:)), for: .touchUpInside)
        
        item4.addTarget(self, action: #selector(TargetAnswer(sender:)), for: .touchUpInside)
        
        view.sendSubviewToBack(answerArea)
        
       
                  
    }
    
    
    
   
   
    @objc func TargetAnswer(sender: UIButton){
    
        if sender.tag == 1 {
            UIView.animate(withDuration: 1.5, delay: 0.01, usingSpringWithDamping: 2, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
                sender.frame = CGRect(x: 40, y: 120, width: 160, height: 80)
                sender.backgroundColor = .green
                sender.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
            }, completion: nil)}
        
        if sender.tag == 2 {
                 UIView.animate(withDuration: 1.5, delay: 0.01, usingSpringWithDamping: 2, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
                     sender.frame = CGRect(x: 230, y: 120, width: 160, height: 80)
                     sender.backgroundColor = .green
                      }, completion: nil)}

        
        if sender.tag == 3 {
                 UIView.animate(withDuration: 1.5, delay: 0.01, usingSpringWithDamping: 2, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
                     sender.frame = CGRect(x: 449, y: 120, width: 160, height: 80)
                     sender.backgroundColor = .green
                    }, completion: nil)}
          

        
        if sender.tag == 4 {
                 UIView.animate(withDuration: 1.5, delay: 0.01, usingSpringWithDamping: 2, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
                    sender.shake()
    }, completion: nil)}
                 
                 
             }
  
    
    @objc func NextController(){
        var controller = DepressionSigns()
        controller.preferredContentSize = finalSize
        PlaygroundPage.current.liveView = controller
        
    }
  
  
}


 
