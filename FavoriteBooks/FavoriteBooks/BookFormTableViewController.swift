//
//  BookFormTableViewController.swift
//  FavoriteBooks
//
//  Created by Ahmad Mohsen on 31/07/2024.
//

import UIKit

class BookFormTableViewController: UITableViewController {

    @IBOutlet weak var titleTextField: UITextField!
    
    @IBOutlet weak var authorTextField: UITextField!
    
    @IBOutlet weak var genreTextField: UITextField!
    
    @IBOutlet weak var lenghtTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func unwindToHomePage(_ unwindSegue: UIStoryboardSegue) {
        performSegue(withIdentifier: "unwindToHomePage", sender: self)
    }
}


