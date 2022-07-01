//
//  Book.swift
//  BookShelf
//
//  Created by Marina Basaeva on 7/1/22.
//

import Foundation

class Book {
    
    let title: String
    let author: String
    let image: String
    let releaseYear: Int
    let description: String
    
    init (title: String, author: String, image: String, releaseYear: Int, description: String){
        self.title = title
        self.author = author
        self.image = image
        self.releaseYear = releaseYear
        self.description = description
    }
    
}//End of class
