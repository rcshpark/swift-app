//
//  CaptureViewController.swift
//  TestProject
//
//  Created by 박상훈 on 2022/06/11.
//

import UIKit
import MobileCoreServices

class CaptureViewController: UIViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate {
    
    @IBOutlet var imgView: UIImageView!
    let imagePicker: UIImagePickerController! = UIImagePickerController()
    var captureImage: UIImage!
    var videoURL: URL!
    var flagImageSave = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnCaptureImage(_ sender: UIButton) {
        if(UIImagePickerController.isSourceTypeAvailable(.camera)){
            flagImageSave = true
            
            imagePicker.delegate = self
            imagePicker.sourceType = .camera
            imagePicker.mediaTypes = ["public.image"]
            imagePicker.allowsEditing = false
            
            present(imagePicker, animated: true, completion: nil)
        } else {
            myAlert("Camera inaccessable", message: "Application cannot access the camera.")
        }
    }
    @IBAction func btnRecordVideo(_ sender: UIButton) {
        if(UIImagePickerController.isSourceTypeAvailable(.camera)){
            flagImageSave = true
            
            imagePicker.delegate = self
            imagePicker.sourceType = .camera
            imagePicker.mediaTypes = ["public,image"]
            imagePicker.allowsEditing = false
            
            present(imagePicker, animated: true, completion: nil)
            
        } else{
            myAlert("Camera inaccessable", message: "Application cannot access the camera.")
        }
        
    }
        func imagePikcerController(_ picker: UIImagePickerController, didFininishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]){
            let mediaType = info[UIImagePickerController.InfoKey.mediaType]as! NSString
            
            if mediaType.isEqual(to: "public.image" as String){
                captureImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
                
                if flagImageSave {
                    UIImageWriteToSavedPhotosAlbum(captureImage, self, nil, nil)
                }
                imgView.image = captureImage
            } else if mediaType.isEqual(to: "public.movie" as String){
                if flagImageSave{
                    videoURL = (info[UIImagePickerController.InfoKey.mediaURL] as! URL)
                    
                    UISaveVideoAtPathToSavedPhotosAlbum(videoURL.relativePath,self, nil, nil)
                }
            }
            
            self.dismiss(animated: true, completion: nil)
        }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true, completion: nil)
    }
    
        func myAlert(_ title: String, message: String) {
            
            let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
            let action = UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil)
            
            alert.addAction(action)
            
            self.present(alert, animated: true, completion: nil)
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
