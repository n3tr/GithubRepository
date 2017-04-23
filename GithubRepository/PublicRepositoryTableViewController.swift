//
//  ViewController.swift
//  GithubRepository
//
//  Created by n3tr on 4/23/2560 BE.
//  Copyright © 2560 Jirat Ki. All rights reserved.
//

import UIKit

public class PublicRepositoryTableViewController: UITableViewController {
    
    let datasource = PublicRepositoryDataSource()
    
    
    public class func configureWith() -> PublicRepositoryTableViewController {
        return UIStoryboard(name: "Main", bundle: Bundle(for: PublicRepositoryTableViewController.self) ).instantiateViewController(withIdentifier: "PublicRepositoryTableViewController") as! PublicRepositoryTableViewController
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Public Repo"
        self.tableView.dataSource = datasource
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 57
    }
}

