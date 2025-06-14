//
//  AppModule.swift
//  expert1
//
//  Created by Hafid Ali Mustaqim on 27/03/25.
//

import Foundation
import Swinject
import SwiftUI

final class AppModule: ObservableObject {
    static let shared = AppModule()
    
    // Observable properties
    @Published var isLoading: Bool = false
    @Published var errorMessage: String?
    
    private let container: Container
    
    private init() {
        container = Container()
        
        // Register services
        container.register(NetworkServiceProtocol.self) { _ in
            NetworkService.shared
        }
        
        // Register data sources
        container.register(RemoteDataSourceProtocol.self) { resolver in
            RemoteDataSource(networkService: resolver.resolve(NetworkServiceProtocol.self)!)
        }
    }
    
    // Services
    var networkService: NetworkServiceProtocol {
        container.resolve(NetworkServiceProtocol.self)!
    }
    
    // Data Sources
    var remoteDataSource: RemoteDataSourceProtocol {
        container.resolve(RemoteDataSourceProtocol.self)!
    }
    
    // Repositories
    // Tambahkan repositories di sini
    
    // ViewModels
    // Tambahkan viewModels di sini
}
