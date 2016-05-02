//
//  DetailViewController.swift
//  Final Exam BookList
//
//  Created by WuKwok Ho on 2/5/2016.
//  Copyright © 2016 Wu Kwok Ho. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var addressLabel: UILabel!
    
    @IBOutlet weak var phoneLabel: UILabel!
    
    @IBOutlet weak var websiteLabel: UILabel!
    
    @IBOutlet weak var introLabel: UILabel!
    
    var book: Book?
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        self.nameLabel.text = book!.name_Ref
        self.addressLabel.text = book!.address_Ref
        self.phoneLabel.text = book!.phone_Ref
        self.introLabel.text = book!.intro_Ref
        self.websiteLabel.text = book!.website_Ref
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
