//
//  AppModule.swift
//  expert1
//
//  Created by Hafid Ali Mustaqim on 27/03/25.
//

import Swinject
import Foundation
import SwiftUI

final class AppModule: ObservableObject {
    static let shared = AppModule()
    
    // Observable properties
    @Published var isLoading: Bool = false
    @Published var errorMessage: String?
    
    private init() {}
    
    // Services
    lazy var networkService: NetworkServiceProtocol = {
        return NetworkService.shared
    }()
    
    // Data Sources
    lazy var remoteDataSource: RemoteDataSourceProtocol = {
        return RemoteDataSource(networkService: networkService)
    }()
    
    // Repositories
    // Tambahkan repositories di sini
    
    // ViewModels
    // Tambahkan viewModels di sini
}
