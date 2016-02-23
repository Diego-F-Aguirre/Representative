//
//  ResultsTableViewController.swift
//  Representatives
//
//  Created by Diego Aguirre on 2/21/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class ResultsTableViewController: UITableViewController {
    
    var repsArray: [Representative] = []

    override func viewDidLoad() {
        super.viewDidLoad()

    }

 
    // MARK: - Table view data source

//    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 1
//    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.repsArray.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("repCell", forIndexPath: indexPath)
 
        
        let rep = self.repsArray[indexPath.row]
        
        if let name = rep.name, party = rep.party {
            cell.textLabel?.text = name
            cell.detailTextLabel?.text = party
            if party == "I" {
                cell.detailTextLabel?.textColor = UIColor.yellowColor()
            } else if party == "D" {
                cell.detailTextLabel?.textColor = UIColor.blueColor()
            } else if party == "R" {
                cell.detailTextLabel?.textColor = UIColor.redColor()
            }
        }

        return cell
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

    
    // MARK: - Navigation


    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "toDetailRep" {
            guard let cell = sender as? UITableViewCell else { return }
            
            let indexPath = self.tableView.indexPathForCell(cell)!
            let rep = self.repsArray[indexPath.row]
            
            let detailViewController = segue.destinationViewController as! RepresentativeDetailTableViewController
            detailViewController.rep = rep
        }
        
    }
    

}

















