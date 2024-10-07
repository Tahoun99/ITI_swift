//
//  ViewController.swift
//  Contest
//
//  Created by Ahmad Mohsen on 05/08/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBAction func submitButton(_ sender: UIButton) {
        if textField.text?.isEmpty == true {
            shakeTextFeild()
        } else {
            performSegue(withIdentifier: "showContestEntry", sender: self)
        }
    }
    
    func shakeTextFeild () {
        UIView.animate(withDuration: 0.1, animations: {
            self.textField.transform = CGAffineTransform(
                translationX: 10, y: 0
            )
        }) {_ in
            UIView.animate(withDuration: 0.1, animations: {
                self.textField.transform = CGAffineTransform(
                    translationX: -20, y: 0
                )
            }) { _ in UIView.animate(withDuration: 0.1, animations: {
                self.textField.transform = CGAffineTransform(
                    translationX: 10, y: 0
                )
            }) {_ in
                UIView.animate(withDuration: 0.1, animations: {
                    self.textField.transform = CGAffineTransform(
                        translationX: -20, y: 0
                    )
                }) { _ in
                    UIView.animate(withDuration: 0.1, animations: {
                        self.textField.transform = CGAffineTransform.identity
                    })
                }
            }
            }
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
