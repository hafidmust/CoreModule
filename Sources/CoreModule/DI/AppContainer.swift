import Foundation

final class AppContainer {
    static let shared = AppContainer()
    
    private init() {}
    
    // Services
    lazy var networkService: NetworkServiceProtocol = {
        return NetworkService.shared
    }()
    
    // Repositories
    // Tambahkan repositories di sini
    
    // ViewModels
    // Tambahkan viewModels di sini
} 