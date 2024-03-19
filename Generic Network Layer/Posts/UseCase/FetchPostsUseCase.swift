//
//  FetchPostsUseCase.swift
//  Generic Network Layer
//
//  Created by Ahmad Hemeda on 19/03/2024.
//

import Foundation

class FetchPostsUseCase: BaseUseCase<Void, [Post]> {
    private let repository: PostRepository
    
    init(repository: PostRepository) {
        self.repository = repository
    }
    
    override func execute(requestData: Void, completion: @escaping (Result<[Post], Error>) -> Void) {
        repository.fetchData(completion: completion)
    }
}
