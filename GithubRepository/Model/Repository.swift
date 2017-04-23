//
//  Repository.swift
//  GithubRepository
//
//  Created by n3tr on 4/23/2560 BE.
//  Copyright © 2560 Jirat Ki. All rights reserved.
//

import Foundation
import ObjectMapper

public struct User: Mappable {
    var avatarUrl: String = ""
    var login: String = ""
    
    
    init() { }
    public init?(map: Map) {}
    
    mutating public func mapping(map: Map) {
        avatarUrl <- map["avatar_url"]
        login <- map["login"]
    }
}

public struct Repository: Mappable {
    var id: Int = 0
    var name: String = ""
    var owner: User = User()
    
    public init?(map: Map) {
        
    }
    
    public mutating func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        owner <- map["owner"]
    }
}
