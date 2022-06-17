Theme 12 
## * 프로젝트에 대하여
1. TableView를 이용하여 화면에 목록기능 사용, 항목 추가/삭제/이동 기능을 구현


## * TableView
1. TableView 란 , 데이터를 목록 형태로 보여주기 위한 TableViewController를 이용
> TableViewController는 사용자에게 목록 형태의 정보를 제공해 줄 뿐 아니라 목록의 특정 항목을 선택하여 세부사항을 표시할때 유용

## * 코드 내부

```swift
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return items.count
    }
```
- 데이터 안의 섹션이 한개이므로 리턴값으 1로 지정 
- 섹션당 열의 개수는 Items 의 개수이므로 함수의 리턴값을 items.count로 지정

```swift

import UIKit

var items = ["교재구매","약속","스터디"]
var itemsImageFile = ["cart.png","clock.png","pencil.png"]

class TableViewController: UITableViewController {
    @IBOutlet var tvListView: UITableView!
   
  }
  
```

```swift 

import UIKit

class DetailViewController: UIViewController {
    
    var receiveItem = ""
    
    @IBOutlet var lblItem: UILabel!
    
    }
```

```swift

import UIKit

class AddViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
    let MAX_ARRAY_NUM = 3
    let PICKER_VIEW_COMUMN = 1
    let PICKER_VIEW_HEIGHT:CGFloat = 30
    var imageArray = [UIImage?]()
    var imageFileName = ["cart.png", "clock.png", "pencil.png"]
    var fileName = ""
    
    @IBOutlet var tfAddItem: UITextField!
    @IBOutlet var pickerImage: UIPickerView!
    @IBOutlet var imgView: UIImageView!
    }
    
 ```
   - TableView 사용시 여러개의 viewcontroller를 이용하기 때문에 주의해서 작업해야함
   - 위의 예시같은 경우는 3가지의 viewcontroller 를 사용 
    
