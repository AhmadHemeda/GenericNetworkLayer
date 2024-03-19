//
//  PostRepository.swift
//  Generic Network Layer
//
//  Created by Ahmad Hemeda on 19/03/2024.
//

import Foundation

class PostRepository: BaseRepository<[Post]> {
    private let apiProvider: APIRequestProviderProtocol
    
    init(apiProvider: APIRequestProviderProtocol) {
        self.apiProvider = apiProvider
    }
    
    override func fetchData(completion: @escaping (Result<[Post], Error>) -> Void) {
        let request = BaseAPIRequest<[Post]>(
            baseURL: URL(string: "https://jsonplaceholder.typicode.com")!,
            path: "/posts",
            method: "GET"
        )
        
        apiProvider.makeRequest(request: request) { result in
            switch result {
            case .success(let posts):
                completion(.success(posts))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
