## 기말고사 제출용

*프로젝트에 대하여 
- 굉장히 바쁜 현대사회에서 우리는 기록해야 할 것, 기억해야 할 것들이 굉장히 많다. 하지만 그럴때마다 매번 종이,카메라,핸드폰으로 메모 중 무엇으로 기록해야 편할지 따져볼순 없을 것이다.
이러한 불편한 점들을 생각해서 종이메모, 카메라, 핸드폰메모 의 기능을 모두 가지고 있는 앱을 만들고자 하였다. 

*세부 내용

- TableView로 먼저 구성하였다.
- 카메라와 포토라이브러리 기능으 구현하였다. 
- 탭과 터치를 사용한 스캐치 화면을 구성하였다. 

*코드 내부 

```swift
import UIKit
import MobileCoreServices

class CaptureViewController: UIViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate {
}
```
+ 카메라와 포토라이브러리를 사용하기 위해 ImagePickerController 와 이것으 사용하기위한 델리게이트 프로토콜 추가
+ 미디어타입이 정의된 헤더파일 MobileCoreService 을 추가


```swift
import UIKit

class DrawViewController: UIViewController {
    @IBOutlet var imgView: UIImageView!
    
    var lastPoint: CGPoint!
    var lineSize: CGFloat = 2.0
    var lineColor = UIColor.red.cgColor
    
   }
```
+ 좌표(위치), 선의색상, 선의 두깨등을 지정하는 변수 선언


```swift
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
  
  ''''
  
    }
  
     override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
    
  ''''
  
  }
  
   override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
   
  ''''
  
  }
  ```
  
