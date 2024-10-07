//
//  ViewController.swift
//  FavoriteBooks
//
//  Created by Ahmad Mohsen on 31/07/2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookCell", for: indexPath) 
        cell.textLabel?.text = books[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        return cell
    }
    

    var books : [String] = []
    
    @IBOutlet weak var table: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100.0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }

    
    @IBAction func AddBook(_ sender: UIButton) {
        let second = self.storyboard?.instantiateViewController(withIdentifier: "second")as! BookFormTableViewController
        
        self.navigationController?.pushViewController(second, animated: true)
    }
    
    
    
    @IBAction func unwindToHomePage(_ unwindSegue: UIStoryboardSegue) {
        if let sourceViewController = unwindSegue.source as? BookFormTableViewController
            ,let bookTitle = sourceViewController.titleTextField.text
            ,let bookAuthor = sourceViewController.authorTextField.text
            ,let bookGenre = sourceViewController.genreTextField.text
            ,let bookLenght = sourceViewController.lenghtTextField.text
        {
            books.append(bookTitle + "\n" + bookAuthor + "\n" + bookGenre + "\n" + bookLenght)
            table.reloadData()
        }
    }
}

