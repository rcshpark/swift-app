## Audio

## *프로젝트에 대하여 
+ ios에서느 기본적을 음악재생 앱고 녹음 앱을 제공 
+ 이를통해 여러가지 기능을 구현한 앱을 만들기 가능 
+ AVAudioPlayer를 사용 (다양한 오디오 포멧 및 코덱을 지원)

## *코드 내부
```swift 

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate, AVAudioRecorderDelegate {
    
    var audioPlayer : AVAudioPlayer!
    var audioFile : URL!
    let MAX_VOLUME : Float = 10.0
    var progressTimer : Timer!
    var audioRecorder : AVAudioRecorder!
    var isRecordMode = false
    
    let imgPlay = UIImage(named: "play.png")
    let imgPause = UIImage(named: "pause.png")
    let imgStop = UIImage(named: "stop.png")
    let imgRecord = UIImage(named: "record.png")
    let timePlayerSelector:Selector = #selector(ViewController.updatePlayTime)
    let timeRecordSelector:Selector = #selector(ViewController.updateRecordTime)
    
```
+ 오디오 재생을 위한 상수오 변수 추가 , 오디오 재생하기위해 헤더파일과 델리게이트가 필요하므로 'AFFoundation' , 'AVAudioPlayerDelegate' 선언 추가 
+ 오디오 재생시간을 표시하기 위해 Timer 기능 추가 사요 



```swift
 func initPlay(){
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: audioFile)
        } catch let error as NSError {
            print("error-initPlay: \(error)")
        }
```
+ 오류가 발생할 수 있는 함수를 호출할 때 do-try-catch 문을 사용, AVAudioPlayer 함수는 입력 파라미터인 오디오 파일이 없을때 대비하여 do-try-catch 문을 사용


