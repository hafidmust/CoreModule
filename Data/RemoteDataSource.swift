import Foundation

protocol RemoteDataSourceProtocol {
    func fetch<T: Codable>(_ type: T.Type, from endpoint: String) async throws -> T
}

class RemoteDataSource: RemoteDataSourceProtocol {
    private let networkService: NetworkServiceProtocol
    
    init(networkService: NetworkServiceProtocol) {
        self.networkService = networkService
    }
    
    func fetch<T: Codable>(_ type: T.Type, from endpoint: String) async throws -> T {
        return try await networkService.fetch(type, from: endpoint)
    }
} 