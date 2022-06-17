## 프로젝트에 대하여
* 비디오 재생을 할 수 있는 기능을 추가하여 앱을 제작 
* 헤더파일 AVKit 추가 

##코드 내부 

```swift

    @IBAction func btnPlayMovie2(_ sender: UIButton) {
        let url = NSURL(string: "https://dl.dropboxusercontent.com/s/ijybpprsmx0bgre/Seascape.mov")!
        
        playVideo(url: url)
    }
    @IBAction func btnPlayExternalMovie(_ sender: UIButton) {
        
        let url = NSURL(string: "https://dl.dropboxusercontent.com/s/e38auz050w2mvud/Fireworks.mp4")!
        
        playVideo(url: url)
    }
 ```
+ 버튼 동작 시, 외부에 링크된 주소를 NSURL 형식으로 변경 후 앞엣 얻은 url을 사용하여 비디오르 재생시킴 
