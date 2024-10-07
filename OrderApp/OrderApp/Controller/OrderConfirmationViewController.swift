//
//  OrderConfirmationViewController.swift
//  OrderApp
//
//  Created by Ahmad Mohsen on 10/08/2024.
//

import UIKit

class OrderConfirmationViewController: UIViewController {

    
    @IBOutlet var confirmationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        confirmationLabel.text = "Thank you for your order! Your wait time is approximately \(minutesToPrepare) minutes."
    }
    
    let minutesToPrepare: Int
    
    init?(coder: NSCoder, minutesToPrepare: Int) {
        self.minutesToPrepare = minutesToPrepare
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
