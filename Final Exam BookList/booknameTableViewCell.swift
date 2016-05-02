//
//  booknameTableViewCell.swift
//  Final Exam BookList
//
//  Created by WuKwok Ho on 2/5/2016.
//  Copyright © 2016 Wu Kwok Ho. All rights reserved.
//

import UIKit

class booknameTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var bookNameLabel: UILabel!
    
    @IBOutlet weak var addressLabel: UILabel!
    

    
    
    var book: Book!
    
    func configureCell(book:Book) {
        self.book = book
        self.bookNameLabel.text = book.name_Ref
        self.addressLabel.text = book.address_Ref
//        self.phoneLabel.text = book.phone_Ref
//        self.IntroLabel.text = book.intro_Ref
//        self.websiteLabel.text = book.website_Ref
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
