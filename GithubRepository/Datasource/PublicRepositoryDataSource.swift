//
//  PublicRepositoryDataSource.swift
//  GithubRepository
//
//  Created by n3tr on 4/23/2560 BE.
//  Copyright © 2560 Jirat Ki. All rights reserved.
//

import UIKit

public final class PublicRepositoryDataSource: NSObject, UITableViewDataSource {
    
    var repositories: [Repository] = []
    
    public func load(repositories: [Repository]) {
        self.repositories = repositories
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RepoCell", for: indexPath) as! RepoCell
        cell.configureWith(value: self.repositories[indexPath.row])
        return cell
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return repositories.count
    }
}
