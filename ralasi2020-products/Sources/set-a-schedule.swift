import Foundation
import UIKit
import SwiftUI
import PlaygroundSupport 


public class SetARoutine : UIViewController{
    //MARK: Declaration
        
        var optionArea = UIView()
        var topArea = UIView()
        

    
    var option1 = OptionButton()
    var option2 = OptionButton()
    
        var resetButton = UIButton()
       
    
       
       var replayButton : UIButton = {
           var b = UIButton()
           b.setImage(UIImage(systemName: "goforward"), for: .normal)
           b.addTarget(self, action: #selector(ReplayTheRoutine), for: .touchUpInside)
           return b
       }()
        
        var stagingArea = UIView()

        
        var currentInfoSlide: ChoicesList!
        var currentSlideNumber = 0
    
    var menuButton : UIButton = {
           var b = UIButton()
           b.setImage(UIImage(systemName: "line.horizontal.3"), for: .normal)
           return b
       }()
        
       
       var stageImage = UIImageView()
       
       var alertView = AlertView()
    

    public override func loadView() {
            super.loadView()
           
    alertView = AlertView(text: SetList[0].explanation, action: #selector(CheckAndIncreaseSlide), controller: self)
       
           view.addSubviews([optionArea, alertView, topArea, menuButton])
           optionArea.addSubviews([option1, option2])
             topArea.addSubviews([stagingArea, replayButton])
            stagingArea.addSubview(stageImage)
       
       menuButton.addTarget(self, action: #selector(TakeToMenu), for: .touchUpInside)
            
           alertView.isHidden = true
           replayButton.tintColor = .red
           view.sendSubviewToBack(topArea)
       self.ConfigureContent(SetList[currentSlideNumber])
           self.FrameCode()
            
        }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
    }
   
   @objc func TakeToMenu(){
       var c = UIHostingController(rootView: MenuView())
      c.preferredContentSize = finalSize
       PlaygroundPage.current.liveView = c
   }
    

    @objc private func IfItsTrue(){
        alertView.isHidden = false
     
    }
    
    @objc private func IfItsFalse(){
        alertView.isHidden = false
    }
   
   
   @objc func ReplayTheRoutine(){
    self.ConfigureContent(SetList[0])
    }
    
   
    
   // a little ugly code but go through this
    private func FrameCode(){
       
       menuButton.LayoutElements(widthConstant: 50, heightConstant: 50,
                                 leftAnchor: view.leftAnchor, leftConstant: 25, rightAnchor: nil, rightConstant: nil, topAnchor: view.topAnchor, topConstant: 25, bottomAnchor: nil, bottomConstant: nil)
          optionArea.LayoutElements(widthConstant: finalSize.width, heightConstant: finalSize.height/2,
                                    leftAnchor: view.leftAnchor, leftConstant: nil,
                                    rightAnchor: view.rightAnchor, rightConstant: nil,
                                    topAnchor: nil, topConstant: nil,
                                    bottomAnchor: view.bottomAnchor, bottomConstant: 0)
                       
          
          replayButton.LayoutElements(widthConstant: 50, heightConstant: 50,
                                      leftAnchor: nil, leftConstant: nil,
                                      rightAnchor: topArea.rightAnchor, rightConstant: -30,
                                      topAnchor: topArea.topAnchor, topConstant: 30,
                                      bottomAnchor: nil, bottomConstant: nil)
                 
                option1.LayoutElements(widthConstant: 210, heightConstant: 170,
                                       leftAnchor: optionArea.leftAnchor, leftConstant: 30,
                                       rightAnchor: nil, rightConstant: nil, topAnchor: nil, topConstant: nil,
                                       bottomAnchor: optionArea.bottomAnchor, bottomConstant: -30)
                
                option2.LayoutElements(widthConstant: 210, heightConstant: 170, leftAnchor: nil, leftConstant: nil, rightAnchor: optionArea.rightAnchor, rightConstant: -30, topAnchor: nil, topConstant: nil, bottomAnchor: optionArea.bottomAnchor, bottomConstant: -30)
                
                topArea.LayoutElements(widthConstant: nil, heightConstant: finalSize.height / 2, leftAnchor: view.leftAnchor, leftConstant: nil, rightAnchor: view.rightAnchor, rightConstant: nil, topAnchor: view.topAnchor, topConstant: nil, bottomAnchor: nil, bottomConstant: nil)
          
          alertView.LayoutElements(widthConstant: 300, heightConstant: 200, leftAnchor: nil, leftConstant: nil, rightAnchor: nil, rightConstant: nil, topAnchor: nil, topConstant: nil, bottomAnchor: nil, bottomConstant: nil )
          
          alertView.CenterLayout(centerX: view.centerXAnchor, centerY: view.centerYAnchor)
           
                stagingArea.LayoutElements(widthConstant: nil, heightConstant: nil,
                                           leftAnchor: topArea.leftAnchor, leftConstant: 10,
                                           rightAnchor: topArea.rightAnchor, rightConstant: -10,
                                           topAnchor: topArea.topAnchor, topConstant: 10,
                                           bottomAnchor: topArea.bottomAnchor, bottomConstant: -10)
          
          
          stageImage.LayoutElements(widthConstant: nil, heightConstant: nil,
                                    leftAnchor: stagingArea.leftAnchor, leftConstant: nil,
                                    rightAnchor: stagingArea.rightAnchor, rightConstant: nil,
                                    topAnchor: stagingArea.topAnchor, topConstant: nil,
                                    bottomAnchor: stagingArea.bottomAnchor, bottomConstant: nil)
    

      }
    
    
       
            
        @objc private func CheckAndIncreaseSlide(){
                guard currentSlideNumber < SetList.count - 1 else {
                    let x = ChapterGenericStartScreen(text: "Some quarantine activities to feel less lonely and sad", buttonText: "View", controller: UIHostingController(rootView: Quarantine()))

                    x.preferredContentSize = finalSize
                    PlaygroundPage.current.liveView = x
                    return
                }
            alertView.isHidden = !alertView.isHidden
                    
                currentSlideNumber += 1
                self.ConfigureContent(SetList[currentSlideNumber])
            }
                
           
    
   
       
   
            
}



extension SetARoutine{

   public func ConfigureContent(_ info: ChoicesList){

                   let firstBool : Bool = {
                       var b : Bool!
                       if info.isqueonerightanswer == true { b = true }
                       else { b = false}
                       return b
                   }()
     
        switch firstBool {
        case true:       option1.ConfigureContent(text: info.option1,
                                          image: info.image1,
                                          value: firstBool,
                                          selector: #selector(IfItsTrue),
                                          controller: self)
             
             option2.ConfigureContent(text: info.option2,
                                         image: info.image2,
                                         value: !firstBool,
                                         selector: #selector(IfItsFalse),
                                         controller: self)
            
        case false:   option1.ConfigureContent(text: info.option1,
                                                       image: info.image1,
                                                       value: !firstBool,
                                                       selector: #selector(IfItsFalse),
                                                       controller: self)
                          
                          option2.ConfigureContent(text: info.option2,
                                                      image: info.image2,
                                                      value: firstBool,
                                                      selector: #selector(IfItsTrue),
                                                      controller: self)
        }
    
          stageImage.ImageViewSimplified(image: info.showImage, contentMode: .scaleAspectFit)
    alertView.ConfigureContent(text: info.explanation, action: #selector(CheckAndIncreaseSlide), controller: self)

         
     }
   
}
