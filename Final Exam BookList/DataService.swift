//
//  DataService.swift
//  Final Exam BookList
//
//  Created by WuKwok Ho on 2/5/2016.
//  Copyright © 2016 Wu Kwok Ho. All rights reserved.
//

import Foundation
import Firebase

class DataService {
    static let dataService = DataService()
    
    private var baseURL = Firebase(url: "\(BASE_URL)")
    private var bookURL = Firebase(url: "\(BASE_URL)/book")

    var base_url: Firebase {
        return baseURL
    }
    
    var book_url: Firebase {
        return bookURL
    }
    
    func createNewBook(book: Dictionary<String, AnyObject>) {
        let firebaseNewBook = book_url.childByAutoId()
        
        firebaseNewBook.setValue(book)
    }
}