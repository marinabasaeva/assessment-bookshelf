//
//  BookController.swift
//  BookShelf
//
//  Created by Marina Basaeva on 7/1/22.
//

import Foundation

class BookController {
    
    //Source of Truth (SoT)
    static var books: [Book] {
        
        let crimeAndPunishment = Book(title: "Crime and Punishment", author: "Fyodor Dostoevsky", image: "crimeAndPunishment", releaseYear: 1866, description: "Crime and Punishment follows the mental anguish and moral dilemmas of Rodion Raskolnikov, an impoverished ex-student in Saint Petersburg who plans to kill an unscrupulous pawnbroker, an old woman who stores money and valuable objects in her flat.")
        
        let animalFarm = Book(title: "Animal Farm", author: "George Orwell", image: "animalFarm", releaseYear: 1945, description: "The book tells the story of a group of farm animals who rebel against their human farmer, hoping to create a society where the animals can be equal, free, and happy.")
        
        let harryPotter = Book(title: "Harry Potter and the Philosopher's Stone", author: "J. K. Rowling", image: "harryPotter", releaseYear: 1997, description: "The first novel in the Harry Potter series and Rowling's debut novel, it follows Harry Potter, a young wizard who discovers his magical heritage on his eleventh birthday, when he receives a letter of acceptance to Hogwarts School of Witchcraft and Wizardry. ")
        
        let atomicHabits = Book(title: "Atomic Habits", author: "James Clear", image: "atomicHabits", releaseYear: 2018, description: "Atomic Habits is the definitive guide to breaking bad behaviors and adopting good ones in four steps, showing you how small, incremental, everyday routines compound into massive, positive change over time.")
        
        let allQuietOnTheWesternFront = Book(title: "All Quiet on the Western Front", author: "Erich Maria Remarque", image: "allQuietOnTheWesternFront", releaseYear: 1929, description: "The book describes the German soldiers' extreme physical and mental stress during the war, and the detachment from civilian life felt by many of these soldiers upon returning home from the front.")
        
        
        return [crimeAndPunishment, animalFarm, harryPotter, atomicHabits, allQuietOnTheWesternFront]
    }
    
}//End of class
