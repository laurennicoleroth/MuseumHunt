//
//  PlayTableViewController.swift
//  ScavengerHunt
//
//  Created by Lauren Nicole Roth on 5/18/16.
//  Copyright © 2016 Lauren Nicole Roth. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class PlayTableViewController: UITableViewController {
    
    var playablePlaces: [Place]?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(playablePlaces)

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }


  

}
