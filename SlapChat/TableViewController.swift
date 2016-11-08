//
//  TableViewController.swift
//  SlapChat
//
//  Created by Ian Rahman on 7/16/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit
import CoreData


class TableViewController: UITableViewController {

    let store = DataStore.sharedInstance
    
    var msgArr = [Message]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
  
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.store.fetchData()
        
        msgArr = store.messages
        sortMsgByTime()
        tableView.reloadData()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return msgArr.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "messageCell", for: indexPath)
        
        cell.textLabel?.text = msgArr[indexPath.row].content
        cell.detailTextLabel?.text = "\(msgArr[indexPath.row].createdAt!)"
        
        return cell
    }
    
    func sortMsgByTime() {
        
        msgArr.sort {$0.createdAt?.compare($1.createdAt as! Date) == ComparisonResult.orderedAscending}
        
    }
    
}














