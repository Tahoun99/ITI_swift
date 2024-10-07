//
//  ViewController.swift
//  OrderOfEvents
//
//  Created by Ahmad Mohsen on 24/07/2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func ButtonToSecond(_ sender: UIButton) { let second = self.storyboard?.instantiateViewController(identifier: "second") as! SecondView
        
        self.navigationController?.pushViewController(second, animated: true)
    }
}

