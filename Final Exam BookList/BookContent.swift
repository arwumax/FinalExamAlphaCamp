//
//  BookContent.swift
//  Final Exam BookList
//
//  Created by WuKwok Ho on 2/5/2016.
//  Copyright © 2016 Wu Kwok Ho. All rights reserved.
//

import Foundation
import Firebase

class Book {
    private var bookRef: Firebase!
    private var bookKey: String!
    private var nameRef: String!
    private var imageRef: String!
    private var addressRef: String!
    private var phoneRef: String!
    private var websiteRef: String!
    private var introRef: String!
    
    var book_Key: String {
        return bookKey
    }
    
    var name_Ref: String {
        return nameRef
    }
    
    var image_Ref: String {
        return imageRef
    }
    
    var address_Ref: String {
        return addressRef
    }
    var phone_Ref: String {
        return phoneRef
    }
    
    var website_Ref: String {
        return websiteRef
    }
    
    var intro_Ref: String {
        return introRef
    }
    
    init(key: String, dictionary: Dictionary<String, AnyObject>) {
        self.bookKey = key
        
        if let name = dictionary["name"] as? String {
            self.nameRef = name
        }
        
        if let image = dictionary["image"] as? String {
            self.imageRef = image
        }
        
        if let address = dictionary["address"] as? String {
            self.addressRef = address
        }
        
        if let phone = dictionary["phone"] as? String {
            self.phoneRef = phone
        }
        
        if let website = dictionary["website"] as? String {
            self.websiteRef = website
        }
        
        if let intro = dictionary["intro"] as? String {
            self.introRef = intro
        }
        
        self.bookRef = DataService.dataService.book_url.childByAppendingPath(self.bookKey)
    }
    
}
