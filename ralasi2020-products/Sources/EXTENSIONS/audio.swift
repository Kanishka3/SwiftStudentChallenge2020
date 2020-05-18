import Foundation
import AVFoundation


 /// the singleton class to play the audio
 public class AudioPlayer {
     
     var player : AVAudioPlayer?
     /// the shared instance for playing the audio
     public static let instance = AudioPlayer()
     
     /// playing any sound
     /// - Parameters:
     ///   - sound: the name of the sound file
     ///   - type: the file type of the sound
    public func PlaySound(sound: String, type: String){
         if let path = Bundle.main.path(forResource: sound, ofType: type) {
             do {
                 player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                 player?.play()
             }
             catch {
                print("unable to play audio")
                
            }
         }}
    
    public func StopThePlayer(){
        player?.stop()
    }
}
