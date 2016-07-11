//
//  MoreTableVC.swift
//  Perspective
//
//  Created by Daniel Dunbar on 6/26/16.
//  Copyright © 2016 Perspective Fitness. All rights reserved.
//

import UIKit

class MoreTableVC: UITableViewController{
    
    var moreOptions: [String] = ["View Profile", "Rewards", "Refer a Friend", "Notifications", "Log Out"]
    let cellReuseIdentifier = "cell"
    
    var cellsOfMore: NSMutableArray! = NSMutableArray()

    @IBOutlet var tableViewCon: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.cellsOfMore.addObject("View Profile")
        self.cellsOfMore.addObject("Rewards")
        self.cellsOfMore.addObject("Refer a Friend")
        self.cellsOfMore.addObject("Log Out")
        
        self.tableViewCon.reloadData()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.cellsOfMore.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! MoreTableViewCell

        // Configure the cell...
        if(moreOptions.count > 0){
            cell.tableButton.tag = moreOptions.count
            cell.tableButton.setTitle(self.moreOptions.removeAtIndex(0), forState: UIControlState.Normal)
            cell.tableButton.addTarget(self, action: #selector(moreTableButtonClick(_:)), forControlEvents: .TouchUpInside)
        }
        
        return cell
    }
    
    @IBAction func moreTableButtonClick(sender: UIButton){
        switch sender.tag{
        case 5: self.performSegueWithIdentifier("showProfileView", sender: self)//show profileView
        case 4: self.performSegueWithIdentifier("showRewardView", sender: self)//show rewardsView
        case 3: self.performSegueWithIdentifier("showReferView", sender: self)//show referView
        case 2: self.performSegueWithIdentifier("showNotificationView", sender: self)//show notificationView
        case 1: self.performSegueWithIdentifier("showLogOutView", sender: self)//show logOutView
        default: break
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
