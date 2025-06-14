import Foundation

struct BaseResponse<T: Codable>: Codable {
    let status: String?
    let message: String?
    let data: T?
    
    enum CodingKeys: String, CodingKey {
        case status
        case message
        case data
    }
} 