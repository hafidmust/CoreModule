import Foundation
import Alamofire

enum NetworkError: Error {
    case invalidURL
    case noData
    case decodingError
    case serverError(String)
}

protocol NetworkServiceProtocol {
    func fetch<T: Codable>(_ type: T.Type, from endpoint: String) async throws -> T
}

class NetworkService: NetworkServiceProtocol {
    static let shared = NetworkService()
    private let baseURL = "https://api.rawg.io/api"
    private let apiKey = "6257b832b1614d97872a6973943fbbce" // Ganti dengan API key Anda
    
    private init() {}
    
    func fetch<T: Codable>(_ type: T.Type, from endpoint: String) async throws -> T {
        let url = baseURL + endpoint
        let parameters: [String: Any] = ["key": apiKey]
        
        return try await withCheckedThrowingContinuation { continuation in
            AF.request(url, parameters: parameters)
                .validate()
                .responseDecodable(of: T.self) { response in
                    switch response.result {
                    case .success(let value):
                        continuation.resume(returning: value)
                    case .failure(let error):
                        continuation.resume(throwing: NetworkError.serverError(error.localizedDescription))
                    }
                }
        }
    }
} 