//
//  addBookViewController.swift
//  Final Exam BookList
//
//  Created by WuKwok Ho on 2/5/2016.
//  Copyright © 2016 Wu Kwok Ho. All rights reserved.
//

import UIKit
import Firebase

class addBookViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!

    @IBOutlet weak var addressTextField: UITextField!
    
    @IBOutlet weak var phoneTextField: UITextField!
    
    @IBOutlet weak var websiteTextField: UITextField!
    
    @IBOutlet weak var introTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addBookButton(sender: AnyObject) {
        let bookName = nameTextField.text
        let address = addressTextField.text
        let phone = phoneTextField.text
        let website = websiteTextField.text
        let intro = websiteTextField.text

        if bookName != "" && address != "" && phone != "" && website != "" && intro != "" {
            let newBook: Dictionary<String, AnyObject> = [
            "name": bookName!,
            "address": address!,
            "phone": phone!,
            "website": website!,
            "intro": intro!
            ]
            
            DataService.dataService.createNewBook(newBook)
        }
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
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
