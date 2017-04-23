//
//  GithubService.swift
//  GithubRepository
//
//  Created by n3tr on 4/23/2560 BE.
//  Copyright © 2560 Jirat Ki. All rights reserved.
//

import Moya

enum GithubService {
    case publicRepo
}

// MARK: - TargetType Protocol Implementation
extension GithubService: TargetType {
    /// The parameters to be incoded in the request.
    var baseURL: URL { return URL(string: "https://api.github.com")! }
    var path: String {
        switch self {
        case .publicRepo:
            return "/repositories"
        }
    }
    var method: Moya.Method {
        return .get
    }
    
    var parameterEncoding: ParameterEncoding {
        return URLEncoding.default
    }
    
    var task: Task {
        return .request
    }
    
    var parameters: [String : Any]? {
        return nil
    }
    
    var sampleData: Data {
        return Data()
    }
}
// MARK: - Helpers
fileprivate extension String {
    var urlEscaped: String {
        return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!
    }
    var utf8Encoded: Data {
        return self.data(using: .utf8)!
    }
}


let sharedService = RxMoyaProvider<GithubService>()



