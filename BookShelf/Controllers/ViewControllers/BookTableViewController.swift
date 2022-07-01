//
//  BookTableViewController.swift
//  BookShelf
//
//  Created by Marina Basaeva on 7/1/22.
//

import UIKit

class BookTableViewController: UITableViewController {
    
    //MARK: - Lifecycles

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "My Book Shelf"
//        self.tableView.backgroundColor = .red

    }

    // MARK: - Table view data source
   
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return BookController.books.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bookCell", for: indexPath)
//      cell.backgroundColor = .clear
        let book = BookController.books[indexPath.row]
        var myConfiguration = cell.defaultContentConfiguration()
        myConfiguration.text = book.title
        myConfiguration.secondaryText = "\(book.author)\n\(book.releaseYear)"
        myConfiguration.secondaryTextProperties.color = .gray
        myConfiguration.image = UIImage(named: book.image)
        myConfiguration.imageProperties.maximumSize = CGSize(width: 100, height: 100)
        
        cell.contentConfiguration = myConfiguration
        return cell
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //Identifier, IndexPath, Destination, Object to Send, Object to Receive
        
        if segue.identifier == "toDetailVC" {
            
            guard let indexPath = tableView.indexPathForSelectedRow,
                  let destination = segue.destination as? BookDetailViewController else {return}
            
            let bookToSend = BookController.books[indexPath.row]
            
            destination.book = bookToSend
        }
    }
}//End of class



//extension BookTableViewController: UITableViewDataSource {}
