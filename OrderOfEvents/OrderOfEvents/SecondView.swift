//
//  SecondView.swift
//  OrderOfEvents
//
//  Created by Ahmad Mohsen on 24/07/2024.
//

import UIKit

class SecondView: UIViewController {

    @IBOutlet weak var labelOfSecondPage: UILabel!
    
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        index += 1
        labelOfSecondPage.text?.append("\nEvent number \(index) was viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        index += 1
        labelOfSecondPage.text?.append("\nEvent number \(index) was viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        index += 1
        labelOfSecondPage.text?.append("\nEvent number \(index) was viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        index += 1
        labelOfSecondPage.text?.append("\nEvent number \(index) was viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        index += 1
        labelOfSecondPage.text?.append("\nEvent number \(index) was viewDidDisappear")
    }
    
    @IBAction func ThirdPageButton(_ sender: Any) {
        let third = self.storyboard?.instantiateViewController(identifier:"third") as! ThirdView
            
        self.navigationController?.pushViewController(third, animated: true)
    }
    
     

}
