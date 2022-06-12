//
//  AddViewController.swift
//  TestProject
//
//  Created by 박상훈 on 2022/06/11.
//

import UIKit

class AddViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
    let MAX_ARRAY_NUM = 8
    let PICKER_VIEW_COMUMN = 1
    let PICKER_VIEW_HEIGHT:CGFloat = 30
    var imageArray = [UIImage?]()
    var imageFileName = ["cart.png","workout.png","drink.png","clock.png","pencil.png","coffee.png",
                          "dinner.png","meeting.png"]
    var fileName = ""
    
    @IBOutlet var tfAddItem: UITextField!
    @IBOutlet var pickerImage: UIPickerView!
    @IBOutlet var imgView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        for i in 0 ..< MAX_ARRAY_NUM {
            let image = UIImage(named: imageFileName[i])
            imageArray.append(image!)
        }
        imgView.image = imageArray[0]
        fileName = imageFileName[0]
    }
    
    @IBAction func btnAddItem(_ sender: UIButton) {
        items.append(tfAddItem.text!)
        itemsImageFile.append(fileName)
        tfAddItem.text = ""
        _ = navigationController?.popViewController(animated: true)
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKER_VIEW_COMUMN
    }
    
    // returns height of row for each component.
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return PICKER_VIEW_HEIGHT
    }

    // returns the # of rows in each component..
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imageFileName.count
    }

    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let imageView = UIImageView(image:imageArray[row])
        imageView.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        
        return imageView
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        imgView.image = imageArray[row]
        fileName = imageFileName[row]

    }
        

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
