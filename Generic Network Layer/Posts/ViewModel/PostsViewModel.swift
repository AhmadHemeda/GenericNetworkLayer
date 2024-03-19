//
//  PostsViewModel.swift
//  Generic Network Layer
//
//  Created by Ahmad Hemeda on 19/03/2024.
//

import Foundation

class PostsViewModel {
    private let fetchPostsUseCase: FetchPostsUseCase
    
    init(fetchPostsUseCase: FetchPostsUseCase) {
        self.fetchPostsUseCase = fetchPostsUseCase
    }
    
    func fetchPosts(completion: @escaping (Result<[Post], Error>) -> Void) {
        fetchPostsUseCase.execute(requestData: ()) { result in
            DispatchQueue.main.async {
                completion(result)
            }
        }
    }
}
