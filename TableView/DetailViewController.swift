//
//  DetailViewController.swift
//  TableView
//
//  Created by 박상훈 on 2022/06/08.
//

import UIKit

class DetailViewController: UIViewController {
    
    var receiveItem = ""
    
    @IBOutlet var lblItem: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblItem.text = receiveItem

        // Do any additional setup after loading the view.
    }
    
    func reciveItem(_item: String)
    {
        receiveItem = _item
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
