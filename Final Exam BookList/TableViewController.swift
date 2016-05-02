//
//  TableViewController.swift
//  Final Exam BookList
//
//  Created by WuKwok Ho on 2/5/2016.
//  Copyright © 2016 Wu Kwok Ho. All rights reserved.
//

import UIKit
import Firebase

class TableViewController: UITableViewController {
    
    var books = [Book]()
    var bookForPass:Book?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DataService.dataService.book_url.observeEventType(.Value, withBlock: { snapshot in
            
            print(snapshot.value)
            self.books = []
            
            if let snapshots = snapshot.children.allObjects as? [FDataSnapshot] {
                for snap in snapshots {
                    if let postDictionary = snap.value as? Dictionary<String, AnyObject>{
                        let key = snap.key
                        let book = Book(key: key, dictionary: postDictionary)
                        self.books.insert(book, atIndex: 0)
                    }
                }
            }
            
            self.tableView.reloadData()
        })
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return books.count
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let book = books[indexPath.row]
        
        if let cell = tableView.dequeueReusableCellWithIdentifier("bookCell") as? booknameTableViewCell {
            cell.configureCell(book)
                    return cell
        } else {
            return booknameTableViewCell()
        }

    }
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        bookForPass = books[indexPath.row]
        performSegueWithIdentifier("showDetail", sender: self)
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */




    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetail" {
            let controller = segue.destinationViewController as! DetailViewController
            controller.book = bookForPass
            
        }
        
    }

}
