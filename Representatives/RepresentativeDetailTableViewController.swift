//
//  RepresentativeDetailTableViewController.swift
//  Representatives
//
//  Created by Diego Aguirre on 2/22/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class RepresentativeDetailTableViewController: UITableViewController {
    
    var rep: Representative?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        if let rep = rep {
            title = rep.name
        }
    }
    
    
    // MARK: - Table view data source
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // Configure the cell...
        
        guard let rep = rep else {
            return tableView.dequeueReusableCellWithIdentifier("repInfoCell", forIndexPath: indexPath)
        }
        
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCellWithIdentifier("repInfoCell", forIndexPath: indexPath)
            cell.textLabel?.text = rep.name
            
            cell.imageView?.image = UIImage(named: rep.state)
            
            var stateDistrictString = ""
            
            stateDistrictString = rep.state + " - "
            
            
            stateDistrictString = stateDistrictString + rep.district
            
            
            cell.detailTextLabel?.text = stateDistrictString
            return cell
        case 1:
            let cell = tableView.dequeueReusableCellWithIdentifier("repContactCell", forIndexPath: indexPath)
            cell.textLabel?.text = "Party"
            cell.detailTextLabel?.text = rep.party
            return cell
        case 2:
            let cell = tableView.dequeueReusableCellWithIdentifier("repContactCell", forIndexPath: indexPath)
            cell.textLabel?.text = "Website"
            cell.detailTextLabel?.text = rep.link
            return cell
        case 3:
            let cell = tableView.dequeueReusableCellWithIdentifier("repContactCell", forIndexPath: indexPath)
            cell.textLabel?.text = "Phone"
            cell.detailTextLabel?.text = rep.phone
            return cell
        case 4:
            let cell = tableView.dequeueReusableCellWithIdentifier("repContactCell", forIndexPath: indexPath)
            cell.textLabel?.text = "Office"
            cell.detailTextLabel?.text = rep.office
            return cell
        default:
            let cell = tableView.dequeueReusableCellWithIdentifier("repContactCell", forIndexPath: indexPath)
            return cell
        }
        
        
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
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
