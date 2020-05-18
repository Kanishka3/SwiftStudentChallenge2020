
import UIKit

// the collection for the choices list for routine view


public struct ChoicesList {
    public var explanation: String!
    public var option1: String!
    public var option2: String!
    
    public var image1 : UIImage!
    public var image2: UIImage!
    public var showImage : UIImage!
    
    public var isqueonerightanswer : Bool!
    
    public init(explanation: String, option1: String, option2: String, image1: UIImage, image2: UIImage, isquestiononeirightAnswer: Bool, showImage: UIImage){
        self.explanation = explanation
        self.showImage = showImage
        self.option1 = option1
        self.option2 = option2
        self.image1 = image1
        self.image2 = image2
        self.isqueonerightanswer = isquestiononeirightAnswer
    
    }
}
 


public let SetList : [ChoicesList] = [
ChoicesList(explanation: "Beauty is the eye of beholder, so is your life", option1: "Negativity Journal", option2: "Gratitude Journal", image1:#imageLiteral(resourceName: "negativity-journal.png"), image2:#imageLiteral(resourceName: "positivity-journal.png") , isquestiononeirightAnswer: false, showImage:#imageLiteral(resourceName: "person-writing.png") ),
 
ChoicesList(explanation: "Hanging out with positive people can help you feel good.", option1: "Negative People", option2: "Positive People", image1: #imageLiteral(resourceName: "sad-people.png"), image2: #imageLiteral(resourceName: "happy-people.png"), isquestiononeirightAnswer: false, showImage: #imageLiteral(resourceName: "person-thinking.png")),

ChoicesList(explanation: "Spending time in nature can flare \"good feeling chemicals\" and you feel good ", option1: "Spend time in nature", option2: "Stay in dark", image1:#imageLiteral(resourceName: "happy-and-light.png") , image2:#imageLiteral(resourceName: "sad-and-dark.png") , isquestiononeirightAnswer: true, showImage:#imageLiteral(resourceName: "person-environment.png") ),

ChoicesList(explanation: "Regular and healthy food intake can circulate your body and better your mental health", option1: "Take meals irregularly", option2: "Take meals at regular time", image1: #imageLiteral(resourceName: "unhealthy-food.png")  , image2:  #imageLiteral(resourceName: "healthy-food.png"), isquestiononeirightAnswer: false, showImage:#imageLiteral(resourceName: "person-hungry.png"))]
