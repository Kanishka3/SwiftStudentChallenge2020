import UIKit
import SwiftUI
import PlaygroundSupport
import AVFoundation
import Combine





public var finalSize : CGSize = CGSize(width: 700, height: 600)


/*:
 # Mental Health Awareness month
 
 
 
 
 ####  *We are the lonelinest society in human history*
 
 
 ![alternate text ](Mental-Health-Stigma.png)

  _Note: Most of the time, the compiler fails to compile code at first try. So, please, run it again in the case that happens \\after all, I have poured my blood, sweat and tears into this playground_
 
 We all need natural physical needs, which includes food, water and shelter, right? Similarly, we have nature psychological needs, which includes connection with other people, the feeling of being nourished, loved and valued. And we are unable to fulfil that, it ruins our sanity, which in turn, ruins our productivity.
 
 
 - Mental health awareness Week:
**Internationally,Mental Health Awareness Week was hosted this year between 18-24 May. So, there is no better time then now to get some awareness about mental health**
  
 
 *Depression is not a sign of MALFUNCTION, it is SIGNAL, a signal that you are a human being with UNMET NEEDS*
 
 
 #### We, as humans, are like living cells. We need to connect with other cells in order to survive, or we eventually become dead
 
 
 Things to play around in this playground:
 
 
 ### Part 1: 🥺 Explore Types
 
 Explore major mental health issues - loneliness, anxiety and depression through interactive options and intuitive animations
   
 ### Part 2: 📅 Scheduling a routine
 
 Help a person with depressed sanity to attain a better mental health with few routine changes.
  
 
 ### Part 3: 🏠 Few quarantine activities to stay and happy and positive
 
 Few bunch of ZStack which shows some tips to maintain your sanity in sprite of quarantine 😉
 
 ### Appreciation Time 👏🏻
 
 
 
 
 
 [TED Talk by Johann Hari](https://youtu.be/MB5IX-np5fE)
 
 

 
 [United Nations Report](https://www.who.int/news-room/facts-in-pictures/detail/mental-health)
 
 

 
 */


 

var controller = UIHostingController(rootView: FacetimeView())
controller.preferredContentSize = finalSize
PlaygroundPage.current.liveView = controller


