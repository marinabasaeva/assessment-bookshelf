//
//  BookDetailViewController.swift
//  BookShelf
//
//  Created by Marina Basaeva on 7/1/22.
//

import UIKit

class BookDetailViewController: UIViewController {

    //MARK: - Outlets

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var bookImage: UIImageView!
    @IBOutlet weak var releaseYearLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    //MARK: -Properties
    var book: Book?
    
    
    //MARK: - Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()

    }
    
    //MARK: - Helper methods
    func updateViews(){
        guard let book = book else {return}
        titleLabel.text = book.title
        authorLabel.text = book.author
        releaseYearLabel.text = "Released: \(book.releaseYear)"
        descriptionLabel.text = book.description
        bookImage.image = UIImage(named: book.image)
    }

}//End of class
