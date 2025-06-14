import Foundation

struct GameResponse: Codable {
    let count: Int
    let next: String?
    let previous: String?
    let results: [GameModel]
}

struct GameModel: Codable, Identifiable {
    let id: Int
    let name: String
    let released: String?
    let backgroundImage: String?
    let rating: Double
    let ratingTop: Int
    let metacritic: Int?
    let description: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case released
        case backgroundImage = "background_image"
        case rating
        case ratingTop = "rating_top"
        case metacritic
        case description = "description_raw"
    }
} 