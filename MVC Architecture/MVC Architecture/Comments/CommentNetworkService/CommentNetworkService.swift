//
//  CommentNetworkService.swift
//  MVC Architecture
//
//  Created by Diana on 07/04/2023.
//

import Foundation

class CommentNetworkService {
    private init () {}
    
    static func getComments(complition: @escaping(GetCommentRespose) -> ()) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1/comments") else { return }
        NetworkService.shared.getData(url: url) { json in
            do {
               let response = try GetCommentRespose(json: json)
                complition(response)
            } catch {
                print(error)
            }
        }
    }
}
