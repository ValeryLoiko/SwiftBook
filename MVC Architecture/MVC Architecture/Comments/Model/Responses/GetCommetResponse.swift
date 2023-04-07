//
//  GetCommetResponse.swift
//  MVC Architecture
//
//  Created by Diana on 07/04/2023.
//

import Foundation

struct GetCommentRespose {
    typealias JSON = [String: AnyObject]
    
    let comments: [Comment]
    
    init(json: Any) throws {
        guard let array = json as? [JSON] else { throw NetworkError.failNetworkError }
        var comments = [Comment]()
        
        for dictionary in array {
            guard let comment = Comment(dict: dictionary) else { continue }
            comments.append(comment)
        }
        self.comments = comments
    }
}
