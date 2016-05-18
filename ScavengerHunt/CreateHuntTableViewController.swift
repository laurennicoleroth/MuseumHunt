//
//  CreateHuntTableViewController.swift
//  ScavengerHunt
//
//  Created by Lauren Nicole Roth on 5/18/16.
//  Copyright © 2016 Lauren Nicole Roth. All rights reserved.
//

import UIKit
import MapKit

class CreateHuntTableViewController: UITableViewController {
    
        let viewModel = ListViewModel()
        
        override func viewDidAppear(animated: Bool) {
            super.viewDidAppear(animated)
            refresh()
            
        }
        
        // MARK: - Table view data source
        
        override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            
            return viewModel.items.count
        }
        
        override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
            
            let item = viewModel.items[indexPath.row]
            cell.textLabel?.text = item.title
            cell.detailTextLabel?.text = item.clue
            
            return cell
        }
        
        override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
            return true
        }
        
        override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
            if editingStyle == .Delete {
                viewModel.removeLocation(indexPath.row)
                refresh()
            }
        }
        
        // MARK: - IBActions
        
        func refresh() {
            viewModel.refresh()
            tableView.reloadData()
        }
        
        // MARK: - Navigation
        
        override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
            let vc = segue.destinationViewController as! LocationViewController
            if segue.identifier == "createSegue" {
                vc.viewModel = LocationViewModel(delegate: vc)
            }
            else if segue.identifier == "editSegue" {
                vc.viewModel = LocationViewModel(delegate: vc, index: tableView.indexPathForSelectedRow!.row)
                let single = viewModel.items[tableView.indexPathForSelectedRow!.row]
                print(single.coordinate)
                vc.singleLocation = Location(title: single.title, address: single.clue, coordinate: single.coordinate, clue: single.clue, createdAt: NSDate())
            }
            
        }
        
        @IBAction func cancelPressed(sender: AnyObject) {
            
            if let navController = self.navigationController {
                print(navController)
                navController.popViewControllerAnimated(true)
            }
        }
        
}

