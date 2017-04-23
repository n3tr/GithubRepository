//
//  RepoCell.swift
//  GithubRepository
//
//  Created by n3tr on 4/23/2560 BE.
//  Copyright © 2560 Jirat Ki. All rights reserved.
//

import UIKit
import Kingfisher

public class RepoCell: UITableViewCell {
    @IBOutlet weak var ownerNameLabel: UILabel!
    @IBOutlet weak var repoNameLabel: UILabel!
    @IBOutlet weak var ownerImageView: UIImageView!
    
    func configureWith(value: Repository) {
        if let imageUrl = URL(string: value.owner.avatarUrl) {
            ownerImageView.kf.setImage(with: imageUrl)
        } else {
            ownerImageView.image = nil
        }
        
        ownerNameLabel.text = value.owner.login
        repoNameLabel.text = value.name
    }
}
