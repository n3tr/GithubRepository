//
//  PublicRepositoryDataSource.swift
//  GithubRepository
//
//  Created by n3tr on 4/23/2560 BE.
//  Copyright © 2560 Jirat Ki. All rights reserved.
//

import UIKit

public final class PublicRepositoryDataSource: NSObject, UITableViewDataSource {
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RepoCell", for: indexPath)
        return cell
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
}
