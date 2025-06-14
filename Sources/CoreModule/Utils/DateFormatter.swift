import Foundation

enum DateFormatterUtil {
    static let shared = DateFormatter()
    
    static func formatDate(_ date: Date, format: String = "yyyy-MM-dd") -> String {
        shared.dateFormat = format
        return shared.string(from: date)
    }
    
    static func parseDate(_ dateString: String, format: String = "yyyy-MM-dd") -> Date? {
        shared.dateFormat = format
        return shared.date(from: dateString)
    }
} 